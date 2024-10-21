# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipswd < Formula
  desc "ipsw - Daemon"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.551"
  license "MIT"

  depends_on "libusb" => :optional

  on_macos do
    on_intel do
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.551/ipswd_3.1.551_macOS_x86_64.tar.gz"
      sha256 "1a27e725da1339c91c32c11a6dd0a161f69653a1a375f65471a9e6c840c1aa67"

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
    on_arm do
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.551/ipswd_3.1.551_macOS_arm64.tar.gz"
      sha256 "c4b8994d76a1f862f880f2aa2129c703638878f68095733728c337088b27d18e"

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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blacktop/ipsw/releases/download/v3.1.551/ipswd_3.1.551_linux_x86_64.tar.gz"
        sha256 "9d8b5c7ad26c89d257848e116b576ac83c9ede04f174fbfd04210bd26924f9bf"

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
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blacktop/ipsw/releases/download/v3.1.551/ipswd_3.1.551_linux_arm64.tar.gz"
        sha256 "fd88eba5a1d5de5f62295eeea875d5e6923db8e3c8aa44a3dcfc3933d5975d3d"

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
    system "#{bin}/ipswd --version"
  end
end
