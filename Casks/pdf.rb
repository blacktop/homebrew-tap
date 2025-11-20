cask "pdf" do
  version "0.7.1"
  sha256 "214ed380115575ad3cd545d276614eb7fab45acf7791e5cdc9ac3291882e1888"

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
end
