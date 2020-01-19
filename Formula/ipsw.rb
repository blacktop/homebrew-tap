# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "19.08.73"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/blacktop/ipsw/releases/download/v19.08.73/ipsw_19.08.73_macOS_amd64_extras.tar.gz"
    sha256 "2dbf0747c465ccb8a10c98b77694dd8bd258505503c12b123ac4ab525c7d0bda"
  elsif OS.linux?
  end
  
  depends_on "lzfse"

  def install
    bin.install "ipsw"
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
