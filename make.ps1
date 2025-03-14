# PowerShell script to build Sphinx documentation
param (
    [string]$Command = "help"
)

# Check if Sphinx is installed and install if needed
$env:PATH = [System.Environment]::GetEnvironmentVariable("PATH", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("PATH", "User")

# Try to find sphinx-build
$sphinxBuild = Get-Command sphinx-build -ErrorAction SilentlyContinue
if ($null -eq $sphinxBuild) {
    Write-Host "Sphinx not found. Attempting to install Sphinx and required packages..." -ForegroundColor Yellow
    pip install sphinx sphinx_book_theme sphinx_design sphinx_copybutton

    # Refresh PATH to include the newly installed executable
    $env:PATH = [System.Environment]::GetEnvironmentVariable("PATH", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("PATH", "User") + ";" + "$env:LOCALAPPDATA\Programs\Python\Python*\Scripts" + ";" + "$env:APPDATA\Python\Python*\Scripts"

    # Check again
    $sphinxBuild = Get-Command sphinx-build -ErrorAction SilentlyContinue
    if ($null -eq $sphinxBuild) {
        # Try to find where sphinx-build might be installed
        $possiblePaths = @(
            "$env:LOCALAPPDATA\Programs\Python\Python*\Scripts\sphinx-build.exe",
            "$env:APPDATA\Python\Python*\Scripts\sphinx-build.exe",
            "$env:ProgramFiles\Python*\Scripts\sphinx-build.exe",
            "$env:USERPROFILE\AppData\Roaming\Python\Python*\Scripts\sphinx-build.exe"
        )

        foreach ($path in $possiblePaths) {
            $foundPaths = Resolve-Path -Path $path -ErrorAction SilentlyContinue
            if ($foundPaths) {
                $sphinxBuildPath = $foundPaths[0].Path
                Write-Host "Found sphinx-build at: $sphinxBuildPath" -ForegroundColor Green
                break
            }
        }

        if (-not $sphinxBuildPath) {
            Write-Error "Could not find sphinx-build. Please install Sphinx manually and try again."
            exit 1
        }
    } else {
        $sphinxBuildPath = $sphinxBuild.Source
    }
} else {
    $sphinxBuildPath = $sphinxBuild.Source
}

Write-Host "Using sphinx-build at: $sphinxBuildPath" -ForegroundColor Green

$SPHINXBUILD = $sphinxBuildPath
$SOURCEDIR = "source"
$BUILDDIR = "build"

function Show-Help {
    Write-Host "=============================================================================" -ForegroundColor Blue
    Write-Host "                         Inoculator Documentation Builder                     " -ForegroundColor Blue
    Write-Host "=============================================================================" -ForegroundColor Blue
    Write-Host ""
    Write-Host "Usage: .\make.ps1 [command]"
    Write-Host ""
    Write-Host "Available commands:"
    Write-Host ""
    Write-Host "  html         to build HTML documentation"
    Write-Host "  livehtml     to build and auto-rebuild HTML documentation when files change"
    Write-Host "  serve        to serve the built HTML documentation with a simple HTTP server"
    Write-Host "  clean        to remove all build artifacts"
    Write-Host "  help         display this help message"
    Write-Host ""
    Write-Host "Examples:"
    Write-Host "  .\make.ps1 html         - Build HTML documentation once"
    Write-Host "  .\make.ps1 livehtml     - Start auto-rebuild server with live preview"
    Write-Host "  .\make.ps1 clean html   - Clean and then build HTML documentation"
    Write-Host "============================================================================="

    # Show standard Sphinx help
    & $SPHINXBUILD -M help $SOURCEDIR $BUILDDIR
}

function Clean-Build {
    Write-Host "Removing everything under $BUILDDIR..." -ForegroundColor Yellow
    if (Test-Path $BUILDDIR) {
        Remove-Item -Recurse -Force $BUILDDIR
    }
    New-Item -ItemType Directory -Path $BUILDDIR | Out-Null
    Write-Host "Build directory has been cleaned." -ForegroundColor Green
}

function Start-LiveHTML {
    Write-Host "Starting auto-rebuild server..." -ForegroundColor Yellow

    # Check if sphinx-autobuild is installed
    $sphinxAutobuildInstalled = Get-Command sphinx-autobuild -ErrorAction SilentlyContinue

    if (-not $sphinxAutobuildInstalled) {
        Write-Host "Installing sphinx-autobuild..." -ForegroundColor Yellow
        pip install sphinx-autobuild
    }

    Write-Host ""
    Write-Host "Starting auto-rebuild server at http://localhost:8000/" -ForegroundColor Green
    Write-Host "Use Ctrl+C to stop." -ForegroundColor Yellow
    Write-Host ""

    sphinx-autobuild $SOURCEDIR "$BUILDDIR/html" --open-browser
}

function Serve-Docs {
    Write-Host "Starting a simple HTTP server to serve the built documentation..." -ForegroundColor Yellow

    if (-not (Test-Path "$BUILDDIR\html")) {
        Write-Host "The documentation hasn't been built yet. Building now..." -ForegroundColor Yellow
        & $SPHINXBUILD -M html $SOURCEDIR $BUILDDIR
    }

    Set-Location "$BUILDDIR\html"
    Write-Host ""
    Write-Host "Starting server at http://localhost:8000/" -ForegroundColor Green
    Write-Host "Use Ctrl+C to stop." -ForegroundColor Yellow
    Write-Host ""

    python -m http.server 8000
}

function Build-Html {
    Write-Host "Building HTML documentation..." -ForegroundColor Yellow
    & $SPHINXBUILD -M html $SOURCEDIR $BUILDDIR

    if ($LASTEXITCODE -eq 0) {
        Write-Host "Documentation built successfully. Output is in $BUILDDIR\html" -ForegroundColor Green
        Write-Host "You can view it by running: .\make.ps1 serve" -ForegroundColor Cyan
    } else {
        Write-Host "Error building documentation. Check the output above for errors." -ForegroundColor Red
    }
}

# Process commands
switch ($Command) {
    "clean" {
        Clean-Build
    }
    "html" {
        Build-Html
    }
    "livehtml" {
        Start-LiveHTML
    }
    "serve" {
        Serve-Docs
    }
    "help" {
        Show-Help
    }
    default {
        & $SPHINXBUILD -M $Command $SOURCEDIR $BUILDDIR
    }
}
