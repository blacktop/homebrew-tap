class Graboid < Formula
  desc "Clientless docker image downloader."
  homepage "https://github.com/blacktop/graboid"
  url "https://github.com/blacktop/graboid/releases/download/0.12.0/graboid_0.12.0_macOS_amd64.tar.gz"
  version "0.12.0"
  sha256 "b581ead7a15bca105960fd382160d577820e9742a7227b374e6fd57918bfff9f"

  def install
    bin.install "graboid"
  end

  test do
    system "#{bin}/graboid --version"
  end
end
