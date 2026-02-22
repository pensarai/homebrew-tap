class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.64"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.64/pensar-darwin-arm64.tar.gz"
      sha256 "d521d5f09964f573865b9d8ea84457b4384bb27009fa035c53424774b64f4489"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.64/pensar-darwin-x64.tar.gz"
      sha256 "589ae6c661b31cdfb41551197f4700a6a405adaa27574fee4bf3284768727335"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.64/pensar-linux-x64.tar.gz"
      sha256 "b88cbdb3c5265d3dc99c3169b4f3155455082f73cd63c0092e04e2046f7ff4a9"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
