# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "3.0.83"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.0.83/ipsw_3.0.83_macOS_x86_64.tar.gz"
      sha256 "0c05aebdf035c9c62b610f83b1ff88a125b228d8ec6914082419f1389fe053b5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.0.83/ipsw_3.0.83_macOS_arm64.tar.gz"
      sha256 "fd7c2afd2dcedfe8672cfcd6fa5438e7007177be2214c87f1361b46b5e26ce5e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.0.83/ipsw_3.0.83_linux_x86_64.tar.gz"
      sha256 "04362c51c2be421c0ebca7dbe387af518fd75b4c916fcd385be2319d51efe303"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/blacktop/ipsw/releases/download/v3.0.83/ipsw_3.0.83_linux_arm64.tar.gz"
      sha256 "1ec6b89e777df6a280b16ab98da809b63d56f96db343492a398edc6e489b8a8f"
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
