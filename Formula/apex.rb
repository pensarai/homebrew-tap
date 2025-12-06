class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.33/pensar-darwin-arm64.tar.gz"
      sha256 "fdb0cf32853d7927a708e8bfd608dfb408a2cbda3320750b4612d7523d5efa7f"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.33/pensar-darwin-x64.tar.gz"
      sha256 "345a4463e8e7c87f436b5eef32e7f4a9b292297e12e30d1718bbfcad9c14a604"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.33/pensar-linux-x64.tar.gz"
      sha256 "5f8ac27e2fdabd2509ae14307fb148be924d6301384473f0380770f1cfb8398c"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
