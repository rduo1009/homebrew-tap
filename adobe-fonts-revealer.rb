require "formula"

class AdobeFontsRevealer < Formula
  homepage "https://github.com/kalaschnik/adobe-fonts-revealer"
  url "https://github.com/kalaschnik/adobe-fonts-revealer.git",
    :using => :git

  head "https://github.com/kalaschnik/adobe-fonts-revealer.git"

  depends_on "bash"
  depends_on "lcdf-typetools"

  def install
    bin.install "reveal" => "adobefont-reveal"
  end
end
