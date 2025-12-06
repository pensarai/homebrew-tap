class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.32/pensar-darwin-arm64.tar.gz"
      sha256 "58a5dafb3b42534bc3c3fe8bec230a13a79b6e12340b08936e46dbdfe93ba22d"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.32/pensar-darwin-x64.tar.gz"
      sha256 "27f211d007c0c680061e15db3c4b6956ab205f329b10c15c0568e7ce370f5a26"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.32/pensar-linux-x64.tar.gz"
      sha256 "7015a51b751ad163d9ed9391ca5fc0c7e44e50fab6d7eab233813bfdaab7300b"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
