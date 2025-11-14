class Auto < Formula
  desc "Generate releases based on semantic version labels on pull requests."
  homepage "https://intuit.github.io/auto"
  url "https://github.com/intuit/auto/releases/download/v11.3.3/auto-macos.gz"
  version "v11.3.3"
  sha256 "225d3df45f8360c9e1336796661db8bcd2e577049531cbeec77f0c2b91db82b6"

  def install
    libexec.install Dir["*"]
    bin.install libexec/"auto-macos"
    mv bin/"auto-macos", bin/"auto"
  end

  test do
    system bin/"auto", "--version"
  end
end