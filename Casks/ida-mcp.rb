# This file is auto-generated. DO NOT EDIT.
cask "ida-mcp" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "Darwin", linux: "Linux"

  version "9.4.5"
  sha256 arm:          "f2a2a4863de101b86390c2d8cac8844fc60925bae21c12727ff6026aa3c18080",
         intel:        "a20e26828b34501bf8da27ae9fef82e58871dbc8255726bf986319b08dbcc14d",
         arm64_linux:  "26b9f83c2edd17a1570b102f76802db09353114db1f6d7f49d73ce12248ebf48",
         x86_64_linux: "628215875c5b6f3b01dd33c96642898b8c74f56a2511951d72f79f0f8bcd3b65"

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
