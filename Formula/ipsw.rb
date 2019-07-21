# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "19.07.22"

  if OS.mac?
    url "https://github.com/blacktop/ipsw/releases/download/v19.07.22/ipsw_19.07.22_macOS_amd64.tar.gz"
    sha256 "3a59b9b22bdec9b8762f61018dafc28e2df04dfae27653e13cc1dd2ba2dd94c7"
  elsif OS.linux?
    url "https://github.com/blacktop/ipsw/releases/download/v19.07.22/ipsw_19.07.22_linux_amd64.tar.gz"
    sha256 "22cf512e1279e43d8f12a016587c98d8ff8aedd98cc682277d892161542e78a7"
  end

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
