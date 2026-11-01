# This file is auto-generated. DO NOT EDIT.
cask "ida-mcp@9.4" do
  version "9.4.5"
  sha256 "f2a2a4863de101b86390c2d8cac8844fc60925bae21c12727ff6026aa3c18080"

  depends_on arch: :arm64

  url "https://github.com/blacktop/ida-mcp-rs/releases/download/v#{version}/ida-mcp_#{version}_Darwin_arm64.tar.gz"
  name "ida-mcp (IDA 9.4)"
  desc "Headless IDA Pro MCP Server for AI-powered binary analysis (IDA 9.4)"
  homepage "https://github.com/blacktop/ida-mcp-rs"

  binary "ida-mcp"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{staged_path}}/ida-mcp"]
  end

  caveats do
    <<~EOS
      ida-mcp@9.4 requires IDA Pro 9.4 to be installed.

      Standard IDA installations work automatically:
        claude mcp add ida -- ida-mcp

      If using a non-standard path, set DYLD_LIBRARY_PATH:
        claude mcp add ida -e DYLD_LIBRARY_PATH='/path/to/ida/Contents/MacOS' -- ida-mcp
    EOS
  end
end
