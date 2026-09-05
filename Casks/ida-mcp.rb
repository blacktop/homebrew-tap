# This file is auto-generated. DO NOT EDIT.
cask "ida-mcp" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "Darwin", linux: "Linux"

  version "9.4.3"
  sha256 arm:          "60aecf82cab5d4402dfd9a054baaadd53ce4c9ee25655d0a009f274180678c68",
         intel:        "a13373c0234ca87152ccd1ce60677d35d5d9acbd42c19b2fc4af85a585b4f2d8",
         arm64_linux:  "871efae5049ba36d2e490a39f635f02d4b53603379f9a0e91d293f841bdf4f4c",
         x86_64_linux: "d8cce3f27cae9290fc2893a3ed13430a0ff1edfde3250d7b4cf3b94e2a88f306"

  url "https://github.com/blacktop/ida-mcp-rs/releases/download/v#{version}/ida-mcp_#{version}_#{os}_#{arch}.tar.gz"
  name "ida-mcp"
  desc "Headless IDA Pro MCP Server for AI-powered binary analysis (IDA 9.4)"
  homepage "https://github.com/blacktop/ida-mcp-rs"

  conflicts_with cask: "ida-mcp@beta"

  binary "ida-mcp"

  on_macos do
    postflight_steps do
      run "/usr/bin/xattr",
          args: ["-dr", "com.apple.quarantine", "{{staged_path}}/ida-mcp"]
    end
  end

  caveats do
    <<~EOS
      ida-mcp requires IDA Pro 9.4 to be installed.
      For other IDA versions: brew install blacktop/tap/ida-mcp@<version>

      Standard IDA installations work automatically:
        claude mcp add ida -- ida-mcp

      If using a non-standard path:
        macOS: set DYLD_LIBRARY_PATH to your IDA path
        Linux: set IDADIR or LD_LIBRARY_PATH to your IDA path
    EOS
  end
end
