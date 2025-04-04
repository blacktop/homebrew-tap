# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipswd < Formula
  desc "ipsw - Daemon"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.591"
  license "MIT"

  depends_on "libusb" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.591/ipswd_3.1.591_macOS_x86_64.tar.gz"
      sha256 "8a5343c0abbfc1690af85db653449104f3db8a7f01f840d9db71f5531f8f36fc"

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
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.591/ipswd_3.1.591_macOS_arm64.tar.gz"
      sha256 "0fe982c4dfa81bd1e778eb4c3fb19e9c30b777749cd63e644e17c8a4283e0811"

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
        url "https://github.com/blacktop/ipsw/releases/download/v3.1.591/ipswd_3.1.591_linux_x86_64.tar.gz"
        sha256 "4bf7a6841dc40e091e19d82038e94d41b53a01a1db774cc3e902ea067b61d53a"

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
        url "https://github.com/blacktop/ipsw/releases/download/v3.1.591/ipswd_3.1.591_linux_arm64.tar.gz"
        sha256 "ebf6f60fcd0674b4b86a8acda7ed94b1da4c3abbc3ae3a326941682985fafd75"

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
