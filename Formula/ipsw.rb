# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "20.08.33"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/blacktop/ipsw/releases/download/v20.08.33/ipsw_20.08.33_macOS_amd64_extras.tar.gz"
    sha256 "cee24ed1b32c53dbbe7e25a26bbc9666a7990d3fccf37fe89ef35121f428a5e4"
  elsif OS.linux?
  end
  
  depends_on "lzfse"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
