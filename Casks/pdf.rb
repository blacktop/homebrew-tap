cask "pdf" do
  version "0.7.0"
  sha256 "55854fa9cd28fb546907f8b55c165d48a1cab0abd74c6bf59bd58b0c660c6dc2"

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
