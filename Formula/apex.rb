class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.47/pensar-darwin-arm64.tar.gz"
      sha256 "ca9eb1df1318217e1ffc6982bbc8a657c64a7b78d24e7ebfb994d9d97e255c5e"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.47/pensar-darwin-x64.tar.gz"
      sha256 "edba8e7810229909752f6944ab2c979b952ef2030ef5276d4fd7376692f7f54f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.47/pensar-linux-x64.tar.gz"
      sha256 "690b3a0b8f76c9b32824d3c24a2ab7154581a4e051c746c29952d85a18f189a5"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
