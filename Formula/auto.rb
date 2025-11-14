class Auto < Formula
  desc "Generate releases based on semantic version labels on pull requests."
  homepage "https://intuit.github.io/auto"
  url "https://github.com/intuit/auto/releases/download/v11.3.5/auto-macos.gz"
  version "v11.3.5"
  sha256 "bb0cf6faf7dfc9c0b1fdb118163af83efe2415e1b01cd1de2b807c304a770e17"

  def install
    libexec.install Dir["*"]
    bin.install libexec/"auto-macos"
    mv bin/"auto-macos", bin/"auto"
  end

  test do
    system bin/"auto", "--version"
  end
end