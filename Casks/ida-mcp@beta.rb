# This file is auto-generated. DO NOT EDIT.
cask "ida-mcp@beta" do
  version "0.9.3-beta.3"
  sha256 "fd86ae1295a0e7d345cbd1a309c08df9a2ddd8c2bf1525504d35555dada5d52e"

  url "https://github.com/blacktop/ida-mcp-rs/releases/download/v#{version}/ida-mcp_#{version}_Darwin_arm64.tar.gz"
  name "ida-mcp (beta)"
  desc "Headless IDA Pro MCP Server for AI-powered binary analysis (beta)"
  homepage "https://github.com/blacktop/ida-mcp-rs"

  conflicts_with cask: "ida-mcp"

  binary "ida-mcp"

  postflight do
    Dir.glob("#{staged_path}/**/ida-mcp").each do |f|
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", f]
    end
  end

  caveats do
    <<~EOS
      ida-mcp@beta requires IDA Pro 9.3+ to be installed.
      This is a prerelease version for testing.

      Set IDADIR before running:
        export IDADIR="/Applications/IDA Professional 9.3.app/Contents/MacOS"

      For MCP integration with Claude Code:
        claude mcp add ida -s user -e IDADIR='/Applications/IDA Professional 9.3.app/Contents/MacOS' -- ida-mcp
    EOS
  end
end
