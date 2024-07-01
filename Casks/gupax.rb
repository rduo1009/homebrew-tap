cask "gupax" do
  version "1.3.8"
  sha256 "d27f4b05b88a9cc3ec528017d95e455cdc3efba2cb4e3ec7a0ff42b0046421a0"

  url "https://github.com/hinto-janai/gupax/releases/download/v#{version}/gupax-v#{version}-macos-x64-bundle.tar.gz"
  name "Gupax"
  desc "GUI for mining Monero on P2Pool using XMRig"
  homepage "https://github.com/hinto-janai/gupax"

  app "Gupax.app"
end
