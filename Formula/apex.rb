class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.56"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.56/pensar-darwin-arm64.tar.gz"
      sha256 "7960f3fcb77d0fc103cbe65a2431ae914a6c3f0833ac4ddfda276b51629fc9b4"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.56/pensar-darwin-x64.tar.gz"
      sha256 "06bb85d0c778323f25d57bff7ed31b490294121ac902455875f8c8bead578f18"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.56/pensar-linux-x64.tar.gz"
      sha256 "76f91a7f495f7a8df92bc06f7d8edb2a3390deb7f22d909be28a52770643f64f"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
