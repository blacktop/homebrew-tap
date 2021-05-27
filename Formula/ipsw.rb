# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "3.0.29"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.29/ipsw_3.0.29_macOS_x86_64.tar.gz"
    sha256 "3d6003aaeaed9352bcb656d43bb4821b8a124cd8f0ea7c0cdcbd177a5950799f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.29/ipsw_3.0.29_macOS_arm64.tar.gz"
    sha256 "9427ce85761a5ea9ccc4c1386145128897625411a33d1b4b2fda397b90349638"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.29/ipsw_3.0.29_linux_x86_64.tar.gz"
    sha256 "8145cb8d301025677752b00a11cf72aef1f688beb101e343adddcd7285e80b80"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.29/ipsw_3.0.29_linux_arm64.tar.gz"
    sha256 "b3ff2cb77c51cf7ace206b0961e0a2384ea17000e75ebf7f5dad1054c8df357c"
  end

  depends_on "bat"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
