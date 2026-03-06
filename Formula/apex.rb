class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.83"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.83/pensar-darwin-arm64.tar.gz"
      sha256 "0d4a1154734187f5a6a2f7e9d792bd859633d5bb520079fb125c0fd23f8eed9c"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.83/pensar-darwin-x64.tar.gz"
      sha256 "6757b1c95009d608ed51bbedbb86e6bb413c2d1ad969e7f743ea909d6ec187f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.83/pensar-linux-x64.tar.gz"
      sha256 "11b7b4eb6b069331a85f6636f8fcfedaedc7639c7211bde78db6a155cbeadfd6"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
