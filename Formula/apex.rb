class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.86"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.86/pensar-darwin-arm64.tar.gz"
      sha256 "2abdefe0ad5dbf7680a3d4bcf4f3a6279f0496ca292b37519e066c9c8ce4679b"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.86/pensar-darwin-x64.tar.gz"
      sha256 "12525d72a6540daa4b5e86349b1cc6f04da510d00a6054220bade301a580d645"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.86/pensar-linux-x64.tar.gz"
      sha256 "643244f28f51bf7773482fd933a78ee4999439592a8bcc29d93c3be9cefbc2ad"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
