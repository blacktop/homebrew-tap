class Graboid < Formula
  desc "Clientless docker image downloader."
  homepage "https://github.com/blacktop/graboid"
  url "https://github.com/blacktop/graboid/releases/download/0.7.0/graboid_0.7.0_macOS_amd64.tar.gz"
  version "0.7.0"
  sha256 "2d7f03918c2d096ba50abb2a904dade7f07348e03b4ad3dc1d1c9643fdde2e68"

  def install
    bin.install "graboid"
  end

  test do
    system "#{bin}/graboid --version"
  end
end
