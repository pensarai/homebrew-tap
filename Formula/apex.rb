class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.88"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.88/pensar-darwin-arm64.tar.gz"
      sha256 "4e21f98b8226ca7e9ef7bfd87d6d27e35f81b7d3804bd4fde6a26d1e4b5969d9"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.88/pensar-darwin-x64.tar.gz"
      sha256 "73aaebfaaca08308cfe919b0b151e70f14b8a084cec56a3783a060c52a78338a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.88/pensar-linux-x64.tar.gz"
      sha256 "17a3ad121fd3d1023c316f622aa1f2d4f61763a243ef2cfa0e4d14faa9b69fdd"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
