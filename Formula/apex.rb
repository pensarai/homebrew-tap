class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.66"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.66/pensar-darwin-arm64.tar.gz"
      sha256 "6fc0d4612db317b9b2404e66f1d6035319672cf45398aabfe7e9c8ff4e83fd9f"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.66/pensar-darwin-x64.tar.gz"
      sha256 "9abad84b9ce4c4ecbed9a7d1325e2967793e6add6497e1bd37099f0e36d89fe1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.66/pensar-linux-x64.tar.gz"
      sha256 "ceac3a7044feac59e7d63935cb056992ce301521311ecc0245c4db347388b811"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
