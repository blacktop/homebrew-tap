# This file is auto-generated. DO NOT EDIT.
cask "ida-mcp" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "Darwin", linux: "Linux"

  version "9.3.22"
  sha256 arm:          "15296375b18a42134e37f99072995c907fa5a8fdfe12c6483a5f2c2faebc55db",
         intel:        "57285d206bdc3947980d8d41a2a4022e1036ccd0e6f42fde7de873d8135353ad",
         arm64_linux:  "789680147dd7d72bc0e5c4c73de4ddab53b217cd1b55740ad0bcc704c85e8852",
         x86_64_linux: "ba142d6c251f1ce9461f785d107042aa6bc564aa435dd393860a966a5c0a232d"

  url "https://github.com/blacktop/ida-mcp-rs/releases/download/v#{version}/ida-mcp_#{version}_#{os}_#{arch}.tar.gz"
  name "ida-mcp"
  desc "Headless IDA Pro MCP Server for AI-powered binary analysis (IDA 9.3)"
  homepage "https://github.com/blacktop/ida-mcp-rs"

  conflicts_with cask: "ida-mcp@beta"

  binary "ida-mcp"

  on_macos do
    postflight do
      Dir.glob("#{staged_path}/**/ida-mcp").each do |f|
        system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", f]
      end
    end
  end

  caveats do
    <<~EOS
      ida-mcp requires IDA Pro 9.3 to be installed.
      For other IDA versions: brew install blacktop/tap/ida-mcp@<version>

      Standard IDA installations work automatically:
        claude mcp add ida -- ida-mcp

      If using a non-standard path:
        macOS: set DYLD_LIBRARY_PATH to your IDA path
        Linux: set IDADIR or LD_LIBRARY_PATH to your IDA path
    EOS
  end
end
