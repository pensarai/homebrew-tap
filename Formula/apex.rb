class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.90"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.90/pensar-darwin-arm64.tar.gz"
      sha256 "96699b1f2c46402fc1c829aa9b2a5a09235ac76b3589a58835f49cd5f534bf5c"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.90/pensar-darwin-x64.tar.gz"
      sha256 "91014e7f4d4cbe8adad42c5705c47ef14021b32129383384bd6dac2c0f07fd15"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.90/pensar-linux-x64.tar.gz"
      sha256 "c179816f468d1dde4cbe301320493c154ce72a4b5ecd52d7a7c51bb979ca10d5"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
