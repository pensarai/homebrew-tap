class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.77"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.77/pensar-darwin-arm64.tar.gz"
      sha256 "a0c150a0a144e4db01c20a2f9f05daff0bc5ccafce9271be05e05875ce55a01e"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.77/pensar-darwin-x64.tar.gz"
      sha256 "3786547f832403730058393a2a16ca3dcd13b8cbdbb30571a1a6e789ecc8c702"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.77/pensar-linux-x64.tar.gz"
      sha256 "2e5fc4a388ce1655780db62b2b5043718d82543587b63c9a1825c61f79953e8f"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
