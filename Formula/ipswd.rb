# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipswd < Formula
  desc "ipsw - Daemon"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.587"
  license "MIT"

  depends_on "libusb" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.587/ipswd_3.1.587_macOS_x86_64.tar.gz"
      sha256 "458cb8d6947893093155a2a5996b17f8769a78b7681a8fad0647fcc0e55e0033"

      def install
        bin.install "ipswd"
        prefix.install "LICENSE", "README.md", "config.example.yml"
        (etc/"ipsw").mkpath
        etc.install prefix/"config.example.yml" => "ipsw/config.yml"
        bash_completion.install "completions/ipswd/_bash" => "ipswd"
        zsh_completion.install "completions/ipswd/_zsh" => "_ipswd"
        fish_completion.install "completions/ipswd/_fish" => "ipswd.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.587/ipswd_3.1.587_macOS_arm64.tar.gz"
      sha256 "9a72b4d2629593f9b0cc04aa198347113ab2ff0fc6918fe9555236652faf20a7"

      def install
        bin.install "ipswd"
        prefix.install "LICENSE", "README.md", "config.example.yml"
        (etc/"ipsw").mkpath
        etc.install prefix/"config.example.yml" => "ipsw/config.yml"
        bash_completion.install "completions/ipswd/_bash" => "ipswd"
        zsh_completion.install "completions/ipswd/_zsh" => "_ipswd"
        fish_completion.install "completions/ipswd/_fish" => "ipswd.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blacktop/ipsw/releases/download/v3.1.587/ipswd_3.1.587_linux_x86_64.tar.gz"
        sha256 "f7518c36c83929f8880c2e179bdcaca402523c9c7b136ed6354d0bb2d18de465"

        def install
          bin.install "ipswd"
          prefix.install "LICENSE", "README.md", "config.example.yml"
          (etc/"ipsw").mkpath
          etc.install prefix/"config.example.yml" => "ipsw/config.yml"
          bash_completion.install "completions/ipswd/_bash" => "ipswd"
          zsh_completion.install "completions/ipswd/_zsh" => "_ipswd"
          fish_completion.install "completions/ipswd/_fish" => "ipswd.fish"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blacktop/ipsw/releases/download/v3.1.587/ipswd_3.1.587_linux_arm64.tar.gz"
        sha256 "ea3ab0eace7976508b980f44204b0001efaa0b3579af38d2b695ca7a028ae3f4"

        def install
          bin.install "ipswd"
          prefix.install "LICENSE", "README.md", "config.example.yml"
          (etc/"ipsw").mkpath
          etc.install prefix/"config.example.yml" => "ipsw/config.yml"
          bash_completion.install "completions/ipswd/_bash" => "ipswd"
          zsh_completion.install "completions/ipswd/_zsh" => "_ipswd"
          fish_completion.install "completions/ipswd/_fish" => "ipswd.fish"
        end
      end
    end
  end

  def caveats
    <<~EOS
      By default, ipswd runs on localhost (127.0.0.1), port 3993.
      If you would like to change these settings, you will have to
      edit the configuration file:
        #{etc}/ipsw/config.yml

      To restart ipswd after an upgrade or config change:
        brew services restart ipswd
      Or, if you don't want/need a background service you can just run:
        /opt/homebrew/opt/ipswd/bin/ipswd start

      To see ipswd logs:
        tail -f /opt/homebrew/var/log/ipswd.log

      To remove ipswd:
        brew services stop ipswd
        brew uninstall ipswd
    EOS
  end

  service do
    run [opt_bin/"ipswd", "start", "--config", etc/"ipsw/config.yml"]
    environment_variables IPSW_IN_HOMEBREW: 1
    keep_alive true
    log_path var/"log/ipswd.log"
    error_log_path var/"log/ipswd.err.log"
    sockets "tcp://127.0.0.1:3993"
  end

  test do
    system "#{bin}/ipswd version"
  end
end
