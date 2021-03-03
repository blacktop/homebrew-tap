# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "3.0.2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.2/ipsw_3.0.2_macOS_x86_64.tar.gz"
    sha256 "7f982ae628ce884acfda85cd5a58362ecd0fd8c6ab83b2e7a9943c1354b5368d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.2/ipsw_3.0.2_macOS_arm64.tar.gz"
    sha256 "66c288b69d4a8e81230763531041d01af1a55e4720cf9c71e562749ab782ed2d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.2/ipsw_3.0.2_linux_x86_64.tar.gz"
    sha256 "ea925f6119a54842430aa6d0e8af582d298af77d8f0b6ee832609825c5e7d465"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.2/ipsw_3.0.2_linux_arm64.tar.gz"
    sha256 "6e8132316f87306d0dcd421425244e0192a136d0fd7249127bffec3f3ab9e49f"
  end

  depends_on "bat"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
