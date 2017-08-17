class Graboid < Formula
  desc "Clientless docker image downloader."
  homepage "https://github.com/blacktop/graboid"
  url "https://github.com/blacktop/graboid/releases/download/0.10.0/graboid_0.10.0_macOS_amd64.tar.gz"
  version "0.10.0"
  sha256 "c46540aba4e213745df94f8707068bae5c1e608bfbbd572261544c88a1e7955d"

  def install
    bin.install "graboid"
  end

  test do
    system "#{bin}/graboid --version"
  end
end
