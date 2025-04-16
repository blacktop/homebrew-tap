# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipswd < Formula
  desc "ipsw - Daemon"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.594"
  license "MIT"

  depends_on "libusb" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.594/ipswd_3.1.594_macOS_x86_64.tar.gz"
      sha256 "fadc4a2aa693072a511d1a9f0e0ebd4d4fa8743a7659b19ccf53aa50dcaf2a93"

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
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.594/ipswd_3.1.594_macOS_arm64.tar.gz"
      sha256 "d8ecbb43e2097adeba78803342e1d27e5e2ceb62d59c2573418b580b2e36f8c3"

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
        url "https://github.com/blacktop/ipsw/releases/download/v3.1.594/ipswd_3.1.594_linux_x86_64.tar.gz"
        sha256 "9d0e002bb3c8a360c0c2816a817d809d3c26b816efb6247657fce198c9782504"

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
        url "https://github.com/blacktop/ipsw/releases/download/v3.1.594/ipswd_3.1.594_linux_arm64.tar.gz"
        sha256 "ca69149d8435cdcafd0f7f1a52152674deabdce1081bf596c58d02f8ce659b3b"

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
