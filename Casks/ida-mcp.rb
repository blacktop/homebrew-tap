# This file is auto-generated. DO NOT EDIT.
cask "ida-mcp" do
  version "0.9.3,3"
  sha256 "44843fd682c866e6ad031d882e81e747e2ebee98a94edc145ba87f30bbff9dc2"

  url "https://github.com/blacktop/ida-mcp-rs/releases/download/v#{version.before_comma}/ida-mcp_#{version.before_comma}_Darwin_arm64.tar.gz"
  name "ida-mcp"
  desc "Headless IDA Pro MCP Server for AI-powered binary analysis"
  homepage "https://github.com/blacktop/ida-mcp-rs"

  conflicts_with cask: "ida-mcp@beta"

  binary "ida-mcp"

  postflight do
    Dir.glob("#{staged_path}/**/ida-mcp").each do |f|
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", f]
    end
  end

  caveats do
    <<~EOS
      ida-mcp requires IDA Pro 9.2+ to be installed.

      Standard IDA installations work automatically:
        claude mcp add ida -- ida-mcp

      If using a non-standard path, set DYLD_LIBRARY_PATH:
        claude mcp add ida -e DYLD_LIBRARY_PATH='/path/to/ida/Contents/MacOS' -- ida-mcp
    EOS
  end
end
