cask "dyld-tools" do
  version "26.1"
  sha256 "4e8028b8eb1421e1c7a2a9d666e9388e9f62d59eebc187c531247149a1197ca9"

  url "https://github.com/blacktop/darwin-dyld-build/releases/download/v26.1/dyld-tools-universal.tar.gz"
  name "dyld-tools"
  desc "Apple dyld tools built for macOS"
  homepage "https://github.com/blacktop/darwin-dyld-build"

  binary "dyld_info"
  binary "dyld_shared_cache_util"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/dyld_info"]
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/dyld_shared_cache_util"]
  end
end
