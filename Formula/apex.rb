class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.40/pensar-darwin-arm64.tar.gz"
      sha256 "9e3f074f4728509add33b3b7af70f7aba0ce0421e61ad05a90acb03a471f33d3"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.40/pensar-darwin-x64.tar.gz"
      sha256 "0ba1671a79d72d4f1d1887a85c18efd3a8aacbfe2d3e3373b42e0de5e4ff947b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.40/pensar-linux-x64.tar.gz"
      sha256 "b5ceefe8f3fb524344b4c79fd294a82b0bc136f9db7b27f87dd867d333659ed4"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
