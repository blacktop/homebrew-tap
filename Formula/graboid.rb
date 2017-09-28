class Graboid < Formula
  desc "Clientless docker image downloader."
  homepage "https://github.com/blacktop/graboid"
  url "https://github.com/blacktop/graboid/releases/download/0.13.0/graboid_0.13.0_macOS_amd64.tar.gz"
  version "0.13.0"
  sha256 "27a25ec3b94c77d39249a886ea5f17ea32a6fe57e4768e9291ea8eafff79d965"

  def install
    bin.install "graboid"
  end

  test do
    system "#{bin}/graboid --version"
  end
end
