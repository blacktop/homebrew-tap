# This file is auto-generated. DO NOT EDIT.
cask "ida-mcp@9.2" do
  version "9.2.1"
  sha256 "d598cee3ece919a371aa9b2de7b53cdbd26fd0c32aba2377250dde3214e12f88"

  url "https://github.com/blacktop/ida-mcp-rs/releases/download/v#{version}/ida-mcp_#{version}_Darwin_arm64.tar.gz"
  name "ida-mcp (IDA 9.2)"
  desc "Headless IDA Pro MCP Server for AI-powered binary analysis (IDA 9.2)"
  homepage "https://github.com/blacktop/ida-mcp-rs"

  binary "ida-mcp"

  postflight do
    Dir.glob("#{staged_path}/**/ida-mcp").each do |f|
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", f]
    end
  end

  caveats do
    <<~EOS
      ida-mcp@9.2 requires IDA Pro 9.2 to be installed.

      Standard IDA installations work automatically:
        claude mcp add ida -- ida-mcp

      If using a non-standard path, set DYLD_LIBRARY_PATH:
        claude mcp add ida -e DYLD_LIBRARY_PATH='/path/to/ida/Contents/MacOS' -- ida-mcp
    EOS
  end
end
