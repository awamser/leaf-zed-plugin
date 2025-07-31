# Leaf Extension for Zed

A Zed editor extension providing support for the Leaf templating language used in Swift Vapor framework.

## Features

- Syntax highlighting for Leaf templates
- Basic bracket matching and auto-closing
- File association for `.leaf` files
- Support for Leaf-specific syntax including:
  - Variable interpolation: `#(variable)`
  - Conditional statements: `#if(condition):`, `#else:`, `#endif`
  - Loop statements: `#for(item in items):`, `#endfor`
  - Function calls and expressions

## Installation

### From GitHub

1. **Manual Installation:**
   ```bash
   # Clone the repository
   git clone https://github.com/your-username/leaf-zed-plugin.git
   
   # Navigate to your Zed extensions directory
   # On macOS: ~/.config/zed/extensions/
   # On Linux: ~/.config/zed/extensions/
   # On Windows: %APPDATA%\Zed\extensions\
   
   # Copy or symlink the extension
   cp -r leaf-zed-plugin ~/.config/zed/extensions/
   ```

2. **Using Zed's Extension Manager:**
   - Open Zed editor
   - Press `Cmd+Shift+P` (macOS) or `Ctrl+Shift+P` (Linux/Windows)
   - Type "extensions" and select "zed: extensions"
   - Click "Install Dev Extension"
   - Navigate to the cloned repository folder
   - Select the folder and install

### From Source

1. Clone this repository
2. Build the extension: `cargo build --release` (optional, Zed can build automatically)
3. The extension will be automatically detected by Zed

### GitHub Repository Setup

To create your own GitHub repository:

1. **Create a new repository on GitHub** named `leaf-zed-plugin`
2. **Push the local repository:**
   ```bash
   git remote add origin https://github.com/YOUR-USERNAME/leaf-zed-plugin.git
   git branch -M main
   git push -u origin main
   ```

## Leaf Syntax Support

This extension recognizes the following Leaf syntax patterns:

### Variable Interpolation
```leaf
<h1>#(title)</h1>
<p>Welcome, #(user.name)!</p>
```

### Conditionals
```leaf
#if(user.isAdmin):
    <p>Admin panel access granted</p>
#else:
    <p>Regular user view</p>
#endif
```

### Loops
```leaf
#for(item in items):
    <li>#(item.name)</li>
#endfor
```

### Functions
```leaf
<p>#(date(now, "yyyy-MM-dd"))</p>
<p>#(capitalize(title))</p>
```

## Development

This extension is built using Rust and the Zed Extension API. The main components are:

- `extension.toml` - Extension metadata and configuration
- `Cargo.toml` - Rust project configuration  
- `src/leaf.rs` - Main extension implementation
- `languages/leaf/config.toml` - Language-specific settings
- `languages/leaf/highlights.scm` - Syntax highlighting rules

## Contributing

Contributions are welcome! Please feel free to submit issues and pull requests.

## License

Licensed under the Apache License, Version 2.0.