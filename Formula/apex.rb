class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.71"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.71/pensar-darwin-arm64.tar.gz"
      sha256 "6809fe5cafb9ce148fc4847d8e89d0f65c0f6a7daa06bae2d99a8b8f99970f8c"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.71/pensar-darwin-x64.tar.gz"
      sha256 "02d5828a78985388368b969f351d6f02f1a26f94806e39455c2a077e09f97052"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.71/pensar-linux-x64.tar.gz"
      sha256 "63260a43168d875fb6403faad79a770263e7686a5c3c9db860338a9a175a51ea"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
