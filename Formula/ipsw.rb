# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "19.08.108"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/blacktop/ipsw/releases/download/v19.08.108/ipsw_19.08.108_macOS_amd64_extras.tar.gz"
    sha256 "1291aaaafc4077fac87cda75188edd930b44ee74cf28bce892d1c04a03a2e0a2"
  elsif OS.linux?
  end

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
