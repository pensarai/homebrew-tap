class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.93"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.93/pensar-darwin-arm64.tar.gz"
      sha256 "59be3e5b6918d8c1da1326ad1ecfc8303da0365e670781004ed9c040a7a2276b"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.93/pensar-darwin-x64.tar.gz"
      sha256 "30ad2c458b7aa95ad95523e4fa2e1c1634f2ed39b1c0cf52f3f9a6c91e43dc08"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.93/pensar-linux-x64.tar.gz"
      sha256 "eaefd067d5d16f9b3a8fe7ad67e822628adbbdff85b5b00a9f2e70a5c22fc3b9"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
