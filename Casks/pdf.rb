cask "pdf" do
  version "0.7.3"
  sha256 "6d748a02f89c56e3ea3d3d41d06efd26abf56797f230c028d42b8f78285d6c70"

  url "https://github.com/blacktop/pdf/releases/download/v#{version}/pdf-#{version}-darwin-ARM64.tar.gz",
      verified: "github.com/blacktop/pdf/"
  name "pdf"
  desc "macOS CLI PDF reader for LLM agents"
  homepage "https://github.com/blacktop/pdf"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  binary "pdf"

  postflight do
    system_command "/usr/bin/xattr",
                  args:         [
                    "-dr",
                    "com.apple.quarantine",
                    "#{staged_path}/pdf",
                  ]
  end
end
