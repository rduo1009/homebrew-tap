require "formula"

class AdobeFontsRevealer < Formula
  desc "Copy Adobe Fonts (OTF) to your Downloads directory (macOS)"
  homepage "https://github.com/kalaschnik/adobe-fonts-revealer"
  url "https://github.com/kalaschnik/adobe-fonts-revealer.git", :using => :git, :branch => "main"
  version "latest"

  depends_on "bash"
  depends_on "lcdf-typetools"

  def install
    bin.install "reveal" => "adobefont-reveal"
  end
end
