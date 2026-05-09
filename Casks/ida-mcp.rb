# This file is auto-generated. DO NOT EDIT.
cask "ida-mcp" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "Darwin", linux: "Linux"

  version "9.3.17"
  sha256 arm:          "7ac81aed3567f9f983a029cfa405569ed85726b534ae107f5dc0c361b5d472fe",
         intel:        "4507c5b1e5aad956d571848ef579dcf68197268361a9c7091d6f99101bccce2d",
         arm64_linux:  "6cd54ed15a62af81e10c7f4dfd2a4f05d225a9dee9925834030966505133c7c5",
         x86_64_linux: "df6b23dba18d4a9d46f0653b4ada6fe4e74c33de7e1ea44d05726f5618745f55"

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
