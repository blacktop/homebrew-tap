class VmProxy < Formula
  desc "VM Proxy Server - Allows hypervisors to be controlled from docker containers."
  homepage "https://github.com/blacktop/vm-proxy"
  url "https://github.com/blacktop/vm-proxy/releases/download/18.03.9-dev/vm-proxy_18.03.9-dev_macOS_amd64.tar.gz"
  version "18.03.9-dev"
  sha256 "8a9468ab3e9353fe1e962d28e37d1267a412b6b3abc37331db23336192d0e087"

  def install
    bin.install "vm-proxy"
  end

  service do
    run bin/"vm-proxy"
    require_root false
    working_dir HOMEBREW_PREFIX
    log_path var/"log/vm-proxy/vm-proxy.log"
    error_log_path var/"log/vm-proxy/vm-proxy.log"
  end

  test do
    system "#{bin}/vm-proxy --version"
  end
end
