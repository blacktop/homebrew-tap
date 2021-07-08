# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "3.0.51"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.0.51/ipsw_3.0.51_macOS_x86_64.tar.gz"
      sha256 "750ff5791030b0aeb70680e5eae37b8b1825630c4d2f25707c4b3da2cee89818"
    end
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.0.51/ipsw_3.0.51_macOS_arm64.tar.gz"
      sha256 "87c934fcfd8d5fbb3e2119033c37ba70d51d926eb688f821a28a8e1055f68b71"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.0.51/ipsw_3.0.51_linux_x86_64.tar.gz"
      sha256 "e5e21044c47a9e18f34ac7c5bbf4d3bf608f015cdf20c9be7b23419c8e7e89f2"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/blacktop/ipsw/releases/download/v3.0.51/ipsw_3.0.51_linux_arm64.tar.gz"
      sha256 "5b615a00133a9d65727efb38476fef84fafc627bf3a10e52c8262713dbfcae98"
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
