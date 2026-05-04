# This file is auto-generated. DO NOT EDIT.
cask "ida-mcp" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "Darwin", linux: "Linux"

  version "9.3.15"
  sha256 arm:          "ca2a112d2ec9d630cb0da4daf958f26eddfaea8a110c55d26407ceda74fa46ec",
         intel:        "3092422cfcbc4c80bfb8290033cd6c2c101e91797e41b2467bd5fc51888888d7",
         arm64_linux:  "2f72a55376facabb25c020186f3504411674547f0335681e06703b8c40288aec",
         x86_64_linux: "d2dcc3544308d6bbb53698ec34493ee392bce2ff36dcc9ddbc0ce595f1e5c269"

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
