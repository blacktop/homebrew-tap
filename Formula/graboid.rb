class Graboid < Formula
  desc "Clientless docker image downloader."
  homepage "https://github.com/blacktop/graboid"
  url "https://github.com/blacktop/graboid/releases/download/0.14.0/graboid_0.14.0_macOS_amd64.tar.gz"
  version "0.14.0"
  sha256 "926202097bd226c901842249389884adf2eab33bb7160c8a9d6b6696d826d219"

  def install
    bin.install "graboid"
  end

  test do
    system "#{bin}/graboid --version"
  end
end
