# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "20.08.63"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/blacktop/ipsw/releases/download/v20.08.63/ipsw_20.08.63_macOS_x86_64.tar.gz"
    sha256 "0dc6451933b4b39bcf9f05e77401ac3065be8062ff367e931220a67a0a5b6e2d"
  end
  
  depends_on "bat"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
