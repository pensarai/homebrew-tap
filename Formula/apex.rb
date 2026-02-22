class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.65"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.65/pensar-darwin-arm64.tar.gz"
      sha256 "be29b446fe711db8ca1d46ae33ab100eb23260a0ec493cbaf8ef736c3985b1e2"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.65/pensar-darwin-x64.tar.gz"
      sha256 "efd9dad24fd25f5382641450242550173adc0d9fd54e044048d94d5cefdcba1a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.65/pensar-linux-x64.tar.gz"
      sha256 "f7f0d34a35f17c63e711b49973b9dd00f609b46ea1d797d2dd3a2af4954e1562"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
