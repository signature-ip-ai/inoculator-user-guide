# iNOCulator Web User Guide

This repository contains the Sphinx documentation source for the iNOCulator Web User Guide.

## Getting Started

### Prerequisites

- Python 3.11 or higher
- For Windows users: Command Prompt or PowerShell
- For Linux/macOS users: Terminal with bash/zsh

### Setup and Build Instructions

#### For Linux/macOS Users

1. **Clone this repository**:
   ```bash
   git clone https://github.com/yourusername/inoculator-user-guide.git
   cd inoculator-user-guide
   ```

2. **Build the documentation**:
   ```bash
   make html
   ```
   This will:
   - Set up a Python virtual environment
   - Install required dependencies
   - Build HTML documentation in the `build/html` directory

3. **Available commands**:
   ```bash
   make help       # Show help message with all commands
   make html       # Build HTML documentation once
   make livehtml   # Auto-rebuild with live preview in browser
   make serve      # Serve existing documentation via HTTP server
   make clean      # Remove build artifacts and virtual environment
   ```

#### For Windows Users

1. **Clone this repository**:
   ```cmd
   git clone https://github.com/yourusername/inoculator-user-guide.git
   cd inoculator-user-guide
   ```

2. **Build the documentation**:
   ```cmd
   make.bat html
   ```
   This will build HTML documentation in the `build/html` directory.

   Note: You may need to install Sphinx and dependencies first:
   ```cmd
   pip install -r requirements.txt
   ```

3. **Available commands**:
   ```cmd
   make.bat              # Show help message
   make.bat html         # Build HTML documentation once
   make.bat livehtml     # Auto-rebuild with live preview
   make.bat serve        # Serve existing documentation via HTTP server
   make.bat clean        # Remove build artifacts
   ```

## Viewing the Documentation

After building, you can view the documentation by:

1. **Direct file access**: Open `build/html/index.html` in your web browser
2. **Built-in server**: Run `make serve` (Linux/macOS) or `make.bat serve` (Windows) and visit http://localhost:8000/

## Development Workflow

For active development and writing, we recommend:

1. Start the auto-rebuilding server:
   - Linux/macOS: `make livehtml`
   - Windows: `make.bat livehtml`

2. Edit the source files in the `source` directory

3. The browser will automatically refresh when you save changes

## Contributing

To contribute to this documentation:

1. Create a new branch for your changes
2. Make your changes to the `.rst` files in the `source` directory
3. Build and test your changes
4. Submit a pull request

## License

[Add your license information here]
