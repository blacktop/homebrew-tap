# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.16/ipsw_3.1.16_macOS_arm64.tar.gz"
      sha256 "856955e40930bbe7dc8dc7d939de2562d38f720c201a2916430d7da654f6d347"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.16/ipsw_3.1.16_macOS_x86_64.tar.gz"
      sha256 "4cc6dd536eecc878e3b30028ebcf751e56504297647437659e967642fd908389"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
    url "https://github.com/blacktop/ipsw/releases/download/v3.1.16/ipsw_3.1.16_macOS_universal.tar.gz"
    sha256 "39221f38019a8aca9904df6953dd40100589a38a13fdb9731f604ec82ed6ce43"

    def install
      bin.install "ipsw"
      bash_completion.install "completions/_bash" => "ipsw"
      zsh_completion.install "completions/_zsh" => "_ipsw"
      fish_completion.install "completions/_fish" => "ipsw.fish"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.16/ipsw_3.1.16_linux_arm64.tar.gz"
      sha256 "2adc9deeb3919bff928ddec3cf50b3f541652d4d293ea01d62df996831774054"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.16/ipsw_3.1.16_linux_x86_64.tar.gz"
      sha256 "0c9a755bfd04d93b4e9f8c35feafe2ae3bd742ae09dab7498b66a832b9c57486"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
  end

  depends_on "bat" => :optional

  test do
    system "#{bin}/ipsw --version"
  end
end
