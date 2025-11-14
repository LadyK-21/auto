class Auto < Formula
  desc "Generate releases based on semantic version labels on pull requests."
  homepage "https://intuit.github.io/auto"
  url "https://github.com/intuit/auto/releases/download/v11.3.4/auto-macos.gz"
  version "v11.3.4"
  sha256 "5482c092f9c7fdc0ad19e56451f04d847e413a9032f67d0c14510604088d0d2b"

  def install
    libexec.install Dir["*"]
    bin.install libexec/"auto-macos"
    mv bin/"auto-macos", bin/"auto"
  end

  test do
    system bin/"auto", "--version"
  end
end