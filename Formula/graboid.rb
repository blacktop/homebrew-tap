class Graboid < Formula
  desc "Clientless docker image downloader."
  homepage "https://github.com/blacktop/graboid"
  url "https://github.com/blacktop/graboid/releases/download/0.15.0/graboid_0.15.0_macOS_amd64.tar.gz"
  version "0.15.0"
  sha256 "bc511c570c268a94647b44de0f5e43061886d8b68c021e47f2b73e71d6007341"

  def install
    bin.install "graboid"
  end

  test do
    system "#{bin}/graboid --version"
  end
end
