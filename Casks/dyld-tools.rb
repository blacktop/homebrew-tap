cask "dyld-tools" do
  version "26.1"
  sha256 "b12b929ebecd4fa6eaca43949e2ca753fcd6cbbe48d36ea088be102a2c9b40ec"

  url "https://github.com/blacktop/darwin-dyld-build/releases/download/v26.1/dyld-tools-universal.tar.gz"
  name "dyld-tools"
  desc "Apple dyld tools built for macOS"
  homepage "https://github.com/blacktop/darwin-dyld-build"

  binary "dyld_info"
  binary "dyld_shared_cache_util"
end
