class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.62"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.62/pensar-darwin-arm64.tar.gz"
      sha256 "1ed56d984d86c09aba8074df58e60768a52387d0c6a78f14e67b9eaa33d200e4"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.62/pensar-darwin-x64.tar.gz"
      sha256 "3405e0f49d866075c09fa2d91ac8306bfee20b32b4ec9721e22a3f6877d38b22"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.62/pensar-linux-x64.tar.gz"
      sha256 "c73eff072df3fead6019c0d7d5ff7add95225456ddbd9a4ba881eec0b7538803"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
