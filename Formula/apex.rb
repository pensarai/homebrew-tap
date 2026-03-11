class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.92"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.92/pensar-darwin-arm64.tar.gz"
      sha256 "6cc54d4b84aeca40a344ccea7da7eea032b32c098b90ac81f1eca782c85d3c28"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.92/pensar-darwin-x64.tar.gz"
      sha256 "0a8755edd4834355330e94a8f1f11533654c9b75e6d4d03c65a59aa105a25e7b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.92/pensar-linux-x64.tar.gz"
      sha256 "929f8684858fec38bc8ebbae2d19607b68fed9e44f8ab76bb5455d09179d23e9"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
