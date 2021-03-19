# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "3.0.11"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.11/ipsw_3.0.11_macOS_x86_64.tar.gz"
    sha256 "a1aa10dc6006b2f99adf12e0e52096fdbe6e95f924799c5c97f25881fdf8a846"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.11/ipsw_3.0.11_macOS_arm64.tar.gz"
    sha256 "67f195f2a65df73cf50636d8651c0191cd86d7ffe33d4bc5592047392d12c01c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.11/ipsw_3.0.11_linux_x86_64.tar.gz"
    sha256 "8c0a6a9431c1316ebdf5578905f9c8922360790ae93768dd35c72ab56340d10f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.11/ipsw_3.0.11_linux_arm64.tar.gz"
    sha256 "167c71adbdc424f9cac91b5788b3fff81587e05787fb61243753d8164018af06"
  end

  depends_on "bat"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
