class SmartRouter < Formula
  desc "Routes coding-agent tasks to configured harnesses"
  homepage "https://github.com/aschi-marksetai/smart-router"
  version "0.1.1"
  on_macos do
    on_arm do
      url "https://github.com/aschi-marksetai/smart-router/releases/download/v#{version}/smart-router-darwin-arm64"
      sha256 "c1a3d463e3f6d2cf3a0491981b3f33f7aa9030ffb0986279b9b774af1d252d3f"
    end
    on_intel do
      url "https://github.com/aschi-marksetai/smart-router/releases/download/v#{version}/smart-router-darwin-x64"
      sha256 "ae999c0f43309bfcfd30c9bbd7319698aabfebcb81dd29823e1496c58d0a6304"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/aschi-marksetai/smart-router/releases/download/v#{version}/smart-router-linux-arm64"
      sha256 "5c8a7705b3b79e93da851894111936722c662bb4805d09c51afb50763a6b4df9"
    end
    on_intel do
      url "https://github.com/aschi-marksetai/smart-router/releases/download/v#{version}/smart-router-linux-x64"
      sha256 "5c165ba531f31f9ef2a9a60e57c28f3257f18cc8e33008e150603927eb7cbba4"
    end
  end
  def install
    bin.install Dir["smart-router-*"][0] => "smart-router"
  end

  test do
    system bin/"smart-router", "--version"
  end

  def caveats
    "Run `smart-router install-skill` and `smart-router init`."
  end
end
