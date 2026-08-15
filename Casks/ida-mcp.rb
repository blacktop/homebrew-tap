# This file is auto-generated. DO NOT EDIT.
cask "ida-mcp" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "Darwin", linux: "Linux"

  version "9.4.2"
  sha256 arm:          "776f6136ac95771a2629940a6fb7b739499d65a3fc34b9b6946b8209017488de",
         intel:        "5b21ad462d695cb0862de666a8ab55a39e810c71d6dec003fd7a928901c5b106",
         arm64_linux:  "0a3e35ec6f4f18d206b6284adf8013bfc980fdab3d36a6904da0a8122b85b523",
         x86_64_linux: "2b4e8931ec87380a474990b821ebaaf1906efbf5f3cd2ccbc242216d4bfcc205"

  url "https://github.com/blacktop/ida-mcp-rs/releases/download/v#{version}/ida-mcp_#{version}_#{os}_#{arch}.tar.gz"
  name "ida-mcp"
  desc "Headless IDA Pro MCP Server for AI-powered binary analysis (IDA 9.4)"
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
