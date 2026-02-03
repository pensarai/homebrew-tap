class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.46"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.46/pensar-darwin-arm64.tar.gz"
      sha256 "13bf7b5b88fba31ddcbf7cf85f8e6da93f30c7f3bdf14959f7350edd2b680ed2"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.46/pensar-darwin-x64.tar.gz"
      sha256 "ba573ec89d3d4f4acd53ddfcae04b40b3267177be32815cbbe183924385ed550"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.46/pensar-linux-x64.tar.gz"
      sha256 "db2032e9f77970cf2ca61848664615ba5ce695d0522c62d12c1beafb084f7e0f"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
