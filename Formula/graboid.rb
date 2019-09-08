# This file was generated by GoReleaser. DO NOT EDIT.
class Graboid < Formula
  desc "Clientless docker image downloader."
  homepage "https://github.com/blacktop/graboid"
  version "0.15.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/blacktop/graboid/releases/download/0.15.2/graboid_0.15.2_macOS_amd64.tar.gz"
    sha256 "b34bc6df05bebb442c8953f295050b086b7ec66372aa3a5cf67d00c38f5d90ad"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/graboid/releases/download/0.15.2/graboid_0.15.2_linux_amd64.tar.gz"
      sha256 "436c8bd31e339db25a719259ee78fb9f63a727ced0679a5fa4d9a23134ff4e4a"
    end
  end

  def install
    bin.install "graboid"
  end

  test do
    system "#{bin}/graboid --version"
  end
end
