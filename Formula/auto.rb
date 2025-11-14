class Auto < Formula
  desc "Generate releases based on semantic version labels on pull requests."
  homepage "https://intuit.github.io/auto"
  url "https://github.com/intuit/auto/releases/download/v11.3.1/auto-macos.gz"
  version "v11.3.1"
  sha256 "6105b2c7fe4caa0a5265fbcbf603a87393861dfcd862e9f1221945adad8133ac"

  def install
    libexec.install Dir["*"]
    bin.install libexec/"auto-macos"
    mv bin/"auto-macos", bin/"auto"
  end

  test do
    system bin/"auto", "--version"
  end
end