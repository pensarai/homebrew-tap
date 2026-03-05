class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.80"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.80/pensar-darwin-arm64.tar.gz"
      sha256 "a88ea2c6ada4f4e8679a828811809027c170e4d773b152b51c77d4c6ef49a740"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.80/pensar-darwin-x64.tar.gz"
      sha256 "00029950d1446961fc3c942824e8dc9beeeb654ea1132385a95057e60517aa9b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.80/pensar-linux-x64.tar.gz"
      sha256 "6b5bad5de8ef1ec710fe7d63057c042c2c28a05016a58c89966b967fbedc339f"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
