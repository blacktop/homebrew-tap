# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "3.0.72"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.0.72/ipsw_3.0.72_macOS_x86_64.tar.gz"
      sha256 "8dd732bde02b0adaf96461015f21c5c4b0e8eef0de5c975bad4d2ac53502d110"
    end
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.0.72/ipsw_3.0.72_macOS_arm64.tar.gz"
      sha256 "1b2557ce62049a33755fc3466ff92563604300c00ad01964f701c2fdb5c3bd08"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.0.72/ipsw_3.0.72_linux_x86_64.tar.gz"
      sha256 "0f9edf2a6195c348bafac01f0e14621e7de4cdd30599eb4128d1212e2ed29a6a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/blacktop/ipsw/releases/download/v3.0.72/ipsw_3.0.72_linux_arm64.tar.gz"
      sha256 "ed0cf316957dfde9f683693d56ced81e9e4d7e5e12f9404a8b9bc3c0cc8bcfa3"
    end
  end

  depends_on "bat"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
