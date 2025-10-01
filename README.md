# Claude Desktop Wrapper

A Nativefier-based desktop wrapper for Claude AI, creating a standalone desktop application on Linux systems.

## 🚀 Quick Start

### Automated Installation

1. **Clone this repository:**
   ```bash
   git clone https://github.com/corypride/claude-desktop-wrapper.git
   cd claude-desktop-wrapper
   ```

2. **Build the wrapper:**
   ```bash
   ./build-claude-wrapper.sh
   ```

3. **Run the application:**
   ```bash
   ./Claude-linux-x64/Claude
   ```

4. **Create desktop shortcut (optional):**
   ```bash
   ./create-desktop-shortcut.sh
   ```

## ⚙️ Features

- ✅ Standalone desktop application
- ✅ Enterprise account compatibility  
- ✅ Single-instance prevention
- ✅ Domain-restricted navigation
- ✅ Optimized for Linux/XFCE
- ✅ Maintains login sessions
- ✅ Native window controls

## 🔧 Requirements

- Node.js and npm
- Linux x64 system
- Internet connection
- Manjaro Linux (tested) or other Arch-based distros

## 📁 What Gets Created

```
Claude-linux-x64/
├── Claude                 # Main executable
├── resources/            # Application resources
│   ├── app/             # Application assets
│   └── ...              # Electron components
├── locales/             # Language files
└── ...                  # Chromium/Electron files
```

## 🛠️ System Integration

### Desktop Entry Creation

The `create-desktop-shortcut.sh` script creates a desktop entry at:
```
~/.local/share/applications/claude-wrapper.desktop
```

### Manual Installation (Alternative)

```bash
# Install Nativefier globally
npm install -g nativefier

# Create Claude wrapper manually
nativefier "https://claude.ai" \
  --name "Claude" \
  --platform linux \
  --arch x64 \
  --single-instance \
  --internal-urls ".*claude\.ai.*" \
  --width 1400 \
  --height 900

# Run the application
./Claude-linux-x64/Claude
```

## 🎯 Configuration Options Used

| Option | Value | Purpose |
|--------|-------|---------|
| `--name` | "Claude" | Application name |
| `--platform` | linux | Target platform |
| `--arch` | x64 | Target architecture |
| `--single-instance` | enabled | Prevents multiple instances |
| `--internal-urls` | `.*claude\.ai.*` | Domain restrictions |
| `--width` | 1400 | Default window width |
| `--height` | 900 | Default window height |

## 🛠️ Troubleshooting

### Common Issues

1. **Permission Denied Error:**
   ```bash
   chmod +x Claude-linux-x64/Claude
   ```

2. **Missing Dependencies:**
   ```bash
   # Manjaro/Arch
   sudo pacman -S gtk3 libxss gconf nss
   
   # Ubuntu/Debian
   sudo apt-get install libgtk-3-0 libxss1 libgconf-2-4 libnss3
   ```

3. **Application Won't Start:**
   ```bash
   # Run with debug output
   ./Claude-linux-x64/Claude --enable-logging --log-level=0
   ```

4. **Blank Window:**
   - Check internet connection
   - Verify Claude.ai accessibility
   - Clear application cache

5. **Build Script Fails:**
   ```bash
   # Check Node.js version
   node --version
   npm --version
   
   # Update npm if needed
   npm install -g npm@latest
   ```

## ⚠️ Limitations

This is a **web wrapper**, which means:

- ❌ No access to native desktop APIs
- ❌ No file system integration beyond web standards
- ❌ No system-level connectors or integrations
- ❌ Limited to web-based Claude features only
- ❌ Cannot access hardware-specific functionality

## 🔄 Updates

To update the wrapper:

1. Remove existing application directory
2. Run the build script again
3. Replace old version with new build

## 🖥️ System Compatibility

### Tested On:
- **OS**: Manjaro Linux
- **Desktop**: XFCE 4.20.1  
- **Shell**: fish shell
- **Hardware**: Dell Inspiron 14 7425 2-in-1, AMD Ryzen 5 5625U, 32GB RAM

### Should Work On:
- Most Linux x64 distributions
- KDE, GNOME, XFCE desktop environments
- Systems with Node.js and npm support

## 📚 Educational Purpose

This project demonstrates:

- **Web Application Wrapping** using Nativefier
- **Electron-based Desktop Applications** 
- **Linux Desktop Integration** techniques
- **Build Script Automation** for cross-platform compatibility
- **Git Repository Management** excluding large binaries

## 🔗 Learning Resources

### Nativefier Documentation
- [Official GitHub Repository](https://github.com/nativefier/nativefier)
- [Command Line Options](https://github.com/nativefier/nativefier/blob/master/docs/api.md)

### Electron (underlying technology)
- [Electron Documentation](https://electronjs.org/docs)
- [Desktop Environment Integration](https://electronjs.org/docs/tutorial/desktop-environment-integration)

## 🚀 Advanced Development

### For Enhanced Features

If you need advanced desktop integration, consider building a custom Electron application instead. Custom Electron apps provide:

- File system access
- System API integration  
- Custom keyboard shortcuts
- Native notifications
- Multi-window support
- Custom context menus
- Hardware access
- System tray integration

See the companion custom Electron guide for building advanced desktop applications with full system integration.

## 🤝 Contributing

This is an educational project demonstrating web application wrapping techniques. Contributions welcome:

- Fork and modify for other web applications
- Improve build process automation
- Add platform-specific configurations  
- Document additional use cases
- Report issues and compatibility problems

## 📄 License

This wrapper project is for educational purposes. Claude AI is owned by Anthropic and subject to their terms of service.

## 🔗 Related Projects

- [Nativefier](https://github.com/nativefier/nativefier) - The underlying wrapper technology
- [Electron](https://electronjs.org/) - The framework powering the wrapper
- [Claude AI](https://claude.ai) - The wrapped application

## 📞 Support

For issues specific to:
- **Nativefier**: Check the [official repository](https://github.com/nativefier/nativefier/issues)
- **Claude AI**: Contact [Anthropic Support](https://support.claude.com)
- **This wrapper**: Open an issue in this repository
- **Manjaro Linux**: Check [Manjaro Forums](https://forum.manjaro.org/)

## 🏷️ Tags

`nativefier` `electron` `desktop-app` `claude-ai` `linux` `manjaro` `wrapper` `web-to-desktop` `xfce` `educational`

---

**Note**: This is a community-created wrapper and is not officially supported by Anthropic.
