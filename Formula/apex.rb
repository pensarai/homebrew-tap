class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.60"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.60/pensar-darwin-arm64.tar.gz"
      sha256 "c31b29f003c3cb744bc795c4944600dc3b9601d3c91f0be13f1784919f067ec2"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.60/pensar-darwin-x64.tar.gz"
      sha256 "355993ffc26b17522f101c53e74a87c243a2e03424760bce6c6e75c66501f29d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.60/pensar-linux-x64.tar.gz"
      sha256 "ea5848ff7514729d561e75a5681c42d66d818027a41ed5070bb47094a9b2ea19"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
