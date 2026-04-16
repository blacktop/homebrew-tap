# This file is auto-generated. DO NOT EDIT.
cask "ida-mcp" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "Darwin", linux: "Linux"

  version "9.3.14"
  sha256 arm:          "45f288febc6ad6adaf54a090725caf61966c635b17025755319482f5fa3b3ea7",
         intel:        "1f5bd68e43ebd8b1e8910a327e3760a1f1b158e75d727968bd0047217ad9e07c",
         arm64_linux:  "c0ff2bc93a2ea855b1a9cd55154023c4885726f830eb6475ee54b61f8badeacb",
         x86_64_linux: "b52e2711332bfa6dff456327ca7cddbc852ebb9784a16e40b937cea09d5785ca"

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
