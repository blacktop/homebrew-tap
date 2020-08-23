# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "20.04.26"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/blacktop/ipsw/releases/download/v20.04.26/ipsw_20.04.26_macOS_amd64_extras.tar.gz"
    sha256 "2c88d1a45107875027a37a64a0aad0576a0bdbd920948b93b49bb7e1f1f25074"
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
