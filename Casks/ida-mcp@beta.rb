# This file is auto-generated. DO NOT EDIT.
cask "ida-mcp@beta" do
  version "9.4.0-beta.2"
  sha256 "a56387dd125c41cbf5e17a5e2ab4405f0cf26547520848406d6968952fa0ec87"

  depends_on arch: :arm64

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
      ida-mcp@beta requires IDA Pro 9.4+ to be installed.
      This is a prerelease version for testing.

      Standard IDA installations work automatically:
        claude mcp add ida -- ida-mcp

      If using a non-standard path, set DYLD_LIBRARY_PATH:
        claude mcp add ida -e DYLD_LIBRARY_PATH='/path/to/ida/Contents/MacOS' -- ida-mcp
    EOS
  end
end
