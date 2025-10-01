# You're currently in: /c/d/Claude-linux-x64
# Create the build script in the current directory
cat > build-claude-wrapper.sh << 'EOF'
#!/bin/bash

echo "🚀 Building Claude Desktop Wrapper..."
echo "📋 This will create a standalone desktop application for Claude AI"
echo ""

# Check if nativefier is installed
if ! command -v nativefier &> /dev/null; then
    echo "❌ Nativefier not found. Installing..."
    npm install -g nativefier
    echo "✅ Nativefier installed successfully"
fi

echo "🔨 Creating Claude desktop wrapper..."
nativefier "https://claude.ai" \
  --name "Claude" \
  --platform linux \
  --arch x64 \
  --single-instance \
  --internal-urls ".*claude\.ai.*" \
  --width 1400 \
  --height 900

if [ -d "Claude-linux-x64" ]; then
    echo ""
    echo "✅ Build completed successfully!"
    echo "📁 Application created in: Claude-linux-x64/"
    echo "🚀 To run: ./Claude-linux-x64/Claude"
    echo ""
    echo "💡 Optional: Create desktop shortcut with:"
    echo "   ./create-desktop-shortcut.sh"
else
    echo "❌ Build failed. Check the error messages above."
    exit 1
fi
EOF

# Make it executable
chmod +x build-claude-wrapper.sh