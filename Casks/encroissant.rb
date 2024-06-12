cask "encroissant" do
  version "0.10.0"
  sha256 "53ce5c7b19ea272a1fda033d7e60f5595183bfd3dd7964a41a84fea170d8c57a"

  url "https://github.com/franciscoBSalgueiro/en-croissant/releases/download/v#{version}/en-croissant_#{version}_x64.dmg"
  name "En Croissant"
  desc "Open-source chess GUI"
  homepage "encroissant.org"

  app "en-croissant.app"
end
