class Termusic < Formula
  version "0.9.0"
  desc "Music Player TUI written in Rust"
  homepage "https://github.com/tramhao/termusic"
  url "https://github.com/tramhao/termusic/releases/download/v#{version}/termusic-v#{version}-x86_64-macos.tar.xz"
  sha256 "68056fa48b729c12e12c629bfef7643d800a9f6f0b3da55728763b4cf0be9878"
  license "GPL-3.0"

  def install
    bin.install "termusic"
    bin.install "termusic-server"
  end

  test do
    assert_equal "termusic --version", "0.9.0"
  end
end
