class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.91"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.91/pensar-darwin-arm64.tar.gz"
      sha256 "28dc67287765c487a003930222fb9185fb3d0eb7acc301cf05f6afc71384d72c"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.91/pensar-darwin-x64.tar.gz"
      sha256 "a5b4581af90bc9db3054395723ba9a80a74eb554657d868631b9b0d5f2450da8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.91/pensar-linux-x64.tar.gz"
      sha256 "47e1bc1f8c16c4f1d08ce20d44b4cafc6f7df326e3328fb9127fd0f0ec52c80d"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
