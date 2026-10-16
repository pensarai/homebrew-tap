class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "2.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v2.7.0/pensar-darwin-arm64.tar.gz"
      sha256 "bb1d64f269751c1d0e75b7d44be5f5316e88b0c586fdc420d4c5ee133f1fc987"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v2.7.0/pensar-darwin-x64.tar.gz"
      sha256 "069d4aa374eb46891954be2518dae1cd5b4c02f1093d64aaefb081a34baa85ae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v2.7.0/pensar-linux-x64.tar.gz"
      sha256 "f0f56ca2f23f43f870511ed05bd8a24087d73c59af118a3e6b22a8a0061b3398"
    end
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v2.7.0/pensar-linux-arm64.tar.gz"
      sha256 "94d228a22e70e5afeaf31eb85c2f6132a6edee0cf7ebc3c18c62cbc377a5ab31"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
