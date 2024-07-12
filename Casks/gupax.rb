cask "gupax" do
  version "1.3.9"

  url "https://github.com/hinto-janai/gupax/releases/download/v#{version}/gupax-v#{version}-macos-x64-bundle.tar.gz"
  name "Gupax"
  desc "GUI for mining Monero on P2Pool using XMRig"
  homepage "https://github.com/hinto-janai/gupax"

  app "gupax-v#{version}-macos-x64-bundle/Gupax.app"
end
