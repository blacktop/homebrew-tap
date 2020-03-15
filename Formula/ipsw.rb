# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "19.08.94"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/blacktop/ipsw/releases/download/v19.08.94/ipsw_19.08.94_macOS_amd64_extras.tar.gz"
    sha256 "54626ba6b080bebc966a93a47e47f18a3d4b76431339d58c75f4d7ed2cfeec72"
  elsif OS.linux?
  end
  
  depends_on "lzfse"
  depends_on "xz"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
