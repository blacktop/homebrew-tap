# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "19.08.71"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/blacktop/ipsw/releases/download/v19.08.71/ipsw_19.08.71_macOS_amd64_extras.tar.gz"
    sha256 "43b8e1e94f22427271ef5a2af9b03c2a4a9dbeefe53f09d975e73d545a0dc8c6"
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
