@ECHO OFF

pushd %~dp0

REM Command file for Sphinx documentation

if "%SPHINXBUILD%" == "" (
	set SPHINXBUILD=sphinx-build
)
set SOURCEDIR=source
set BUILDDIR=build

REM Check for help options first
if "%1" == "-h" goto help
if "%1" == "--help" goto help

%SPHINXBUILD% >NUL 2>NUL
if errorlevel 9009 (
	echo.
	echo.The 'sphinx-build' command was not found. Make sure you have Sphinx
	echo.installed, then set the SPHINXBUILD environment variable to point
	echo.to the full path of the 'sphinx-build' executable. Alternatively you
	echo.may add the Sphinx directory to PATH.
	echo.
	echo.If you don't have Sphinx installed, grab it from
	echo.https://www.sphinx-doc.org/
	exit /b 1
)

if "%1" == "" goto help
if "%1" == "clean" goto clean
if "%1" == "livehtml" goto livehtml
if "%1" == "serve" goto serve

%SPHINXBUILD% -M %1 %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%
goto end

:clean
echo.Removing everything under %BUILDDIR%...
rmdir /s /q %BUILDDIR%
mkdir %BUILDDIR%
echo.Build directory has been cleaned.
goto end

:livehtml
echo.Starting auto-rebuild server...
pip list | find "sphinx-autobuild" >NUL
if errorlevel 1 (
    echo Installing sphinx-autobuild...
    pip install sphinx-autobuild
)
echo.
echo.Starting auto-rebuild server at http://localhost:8000/
echo.Use Ctrl+C to stop.
echo.
sphinx-autobuild %SOURCEDIR% %BUILDDIR%/html %SPHINXOPTS% %O% --open-browser
goto end

:serve
echo.Starting a simple HTTP server to serve the built documentation...
if not exist %BUILDDIR%\html (
    echo.The documentation hasn't been built yet. Building now...
    %SPHINXBUILD% -M html %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%
)
cd %BUILDDIR%\html
echo.
echo.Starting server at http://localhost:8000/
echo.Use Ctrl+C to stop.
echo.
python -m http.server 8000
goto end

:help
echo.=============================================================================
echo.                         Inoculator Documentation Builder
echo.=============================================================================
echo.
echo.Usage: make [command]
echo.
echo.Available commands:
echo.
echo.  html         to build HTML documentation
echo.  livehtml     to build and auto-rebuild HTML documentation when files change
echo.  serve        to serve the built HTML documentation with a simple HTTP server
echo.  clean        to remove all build artifacts
echo.  -h, --help   display this help message
echo.
echo.Standard Sphinx commands:
%SPHINXBUILD% -M help %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%
echo.
echo.Examples:
echo.  make html         - Build HTML documentation once
echo.  make livehtml     - Start auto-rebuild server with live preview
echo.  make clean html   - Clean and then build HTML documentation
echo.=============================================================================

:end
popd
