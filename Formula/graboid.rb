class Graboid < Formula
  desc "Clientless docker image downloader."
  homepage "https://github.com/blacktop/graboid"
  url "https://github.com/blacktop/graboid/releases/download/0.8.0/graboid_0.8.0_macOS_amd64.tar.gz"
  version "0.8.0"
  sha256 "ebe02d789ddb32005917ae707e405345404aefcc8c27a831d7c965784f2eec25"

  def install
    bin.install "graboid"
  end

  test do
    system "#{bin}/graboid --version"
  end
end
