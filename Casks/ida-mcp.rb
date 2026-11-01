# This file is auto-generated. DO NOT EDIT.
cask "ida-mcp" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "Darwin", linux: "Linux"

  version "9.5.0"
  sha256 arm:          "4dfa2048b826575953445612769d2fe54976729c2dfb65da0a556e7f3cf82894",
         intel:        "8e7a713eb9b3e0dc7c4e11664dcf47e82c517b9cbb9602bf4863c276bb291972",
         arm64_linux:  "32c6ebf766cb586fbd908fca11c6a75fd0f5205222efc31bd09bef3d330cfd13",
         x86_64_linux: "6154d62db208c7cc148c5f6cfb7b0ea2f667e5cbe90cb70a72e7c0fe4fccf035"

  url "https://github.com/blacktop/ida-mcp-rs/releases/download/v#{version}/ida-mcp_#{version}_#{os}_#{arch}.tar.gz"
  name "ida-mcp"
  desc "Headless IDA Pro MCP Server for AI-powered binary analysis (IDA 9.5)"
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
      ida-mcp requires IDA Pro 9.5 to be installed.
      For other IDA versions: brew install blacktop/tap/ida-mcp@<version>

      Standard IDA installations work automatically:
        claude mcp add ida -- ida-mcp

      If using a non-standard path:
        macOS: set DYLD_LIBRARY_PATH to your IDA path
        Linux: set IDADIR or LD_LIBRARY_PATH to your IDA path
    EOS
  end
end
