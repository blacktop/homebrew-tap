# This file is auto-generated. DO NOT EDIT.
cask "ida-mcp" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "Darwin", linux: "Linux"

  version "9.4.4"
  sha256 arm:          "55026c31bc6679cf193de5ff8ec3059601a9650de55fb1b95d1dadc799d4046a",
         intel:        "22be48c43470ca9c2d2a0ad07f0f0e348a9625a1df72ced4984c3a4927510863",
         arm64_linux:  "ef9690b3b7648620807d1071544bd6aabd3aebcb0a41aa4d3ef72a8e11a82f04",
         x86_64_linux: "cdaf3f332c8b94d2764f61577cefd419b0693dabdf64ae97243d6fa02dde6398"

  url "https://github.com/blacktop/ida-mcp-rs/releases/download/v#{version}/ida-mcp_#{version}_#{os}_#{arch}.tar.gz"
  name "ida-mcp"
  desc "Headless IDA Pro MCP Server for AI-powered binary analysis (IDA 9.4)"
  homepage "https://github.com/blacktop/ida-mcp-rs"

  conflicts_with cask: "ida-mcp@beta"

  binary "ida-mcp"

  on_macos do
    postflight_steps do
      run "/usr/bin/xattr",
          args: ["-dr", "com.apple.quarantine", "{{staged_path}}/ida-mcp"]
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
