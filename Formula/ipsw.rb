# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "3.0.5"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.5/ipsw_3.0.5_macOS_x86_64.tar.gz"
    sha256 "268164e067639f418702517a481aec6f8df6e43e5785b21686dd542f216b9b14"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.5/ipsw_3.0.5_macOS_arm64.tar.gz"
    sha256 "f3eaafba3b58467ce14dd8a8570a4885112b960e416a093b969f9ca2a7db6d24"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.5/ipsw_3.0.5_linux_x86_64.tar.gz"
    sha256 "684c2ff602a57e7112904e16a2fce6f245292dee8a5ca46d9c9d22dea6566459"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.5/ipsw_3.0.5_linux_arm64.tar.gz"
    sha256 "4387789b6962cb9e2c731ad8f3cd61321a3dd4cf4bf10ab442f988150e9ecb00"
  end

  depends_on "bat"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
