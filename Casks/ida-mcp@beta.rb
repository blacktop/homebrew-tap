# This file is auto-generated. DO NOT EDIT.
cask "ida-mcp@beta" do
  version "9.5.0-beta.5"
  sha256 "1f376b54b0bc71ebff5c7e572c2d01ffdadb5ee526342fea204a563e508d9719"

  depends_on arch: :arm64

  url "https://github.com/blacktop/ida-mcp-rs/releases/download/v#{version}/ida-mcp_#{version}_Darwin_arm64.tar.gz"
  name "ida-mcp (beta)"
  desc "Headless IDA Pro MCP Server for AI-powered binary analysis (beta)"
  homepage "https://github.com/blacktop/ida-mcp-rs"

  conflicts_with cask: "ida-mcp"

  binary "ida-mcp"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{staged_path}}/ida-mcp"]
  end

  caveats do
    <<~EOS
      ida-mcp@beta requires IDA Pro 9.5+ to be installed.
      This is a prerelease version for testing.

      Standard IDA installations work automatically:
        claude mcp add ida -- ida-mcp

      If using a non-standard path, set DYLD_LIBRARY_PATH:
        claude mcp add ida -e DYLD_LIBRARY_PATH='/path/to/ida/Contents/MacOS' -- ida-mcp
    EOS
  end
end
