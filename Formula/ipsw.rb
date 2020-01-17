# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "19.08.66"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/blacktop/ipsw/releases/download/v19.08.66/ipsw_19.08.66_macOS_amd64_extras.tar.gz"
    sha256 "b78e5aafa01500f4819900135207acabd48465ebe345fa67b02c9878f0ab0e3a"
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
