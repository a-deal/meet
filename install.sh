#!/bin/bash
set -e

echo "Installing meet..."

# Check dependencies
command -v sox >/dev/null 2>&1 || { echo "Installing sox..."; brew install sox; }
command -v ffmpeg >/dev/null 2>&1 || { echo "ffmpeg already installed or install with: brew install ffmpeg"; }
command -v mlx_whisper >/dev/null 2>&1 || { echo "Installing mlx-whisper..."; pip3 install mlx-whisper; }

# Make meet executable
chmod +x "$(dirname "$0")/meet"

# Create symlink in /usr/local/bin or ~/bin
INSTALL_DIR="$HOME/.local/bin"
mkdir -p "$INSTALL_DIR"
ln -sf "$(cd "$(dirname "$0")" && pwd)/meet" "$INSTALL_DIR/meet"

# Check PATH
if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
  echo "Added $INSTALL_DIR to PATH. Restart your terminal or run: source ~/.zshrc"
fi

echo ""
echo "Done! Try: meet help"
