# This file is auto-generated. DO NOT EDIT.
cask "ida-mcp" do
  version "0.9.2"
  sha256 "f966dd0b510e557b94cc7cc9cd3489187b28e8d5cefd1b2982aaf39bc8317255"

  url "https://github.com/blacktop/ida-mcp-rs/releases/download/v#{version}/ida-mcp_#{version}_Darwin_arm64.tar.gz"
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

      Set IDADIR before running:
        export IDADIR="/Applications/IDA Professional 9.2.app/Contents/MacOS"

      For MCP integration with Claude Code:
        claude mcp add ida -s user -e IDADIR='/Applications/IDA Professional 9.2.app/Contents/MacOS' -- ida-mcp
    EOS
  end
end
