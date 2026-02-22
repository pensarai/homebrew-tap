class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.63"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.63/pensar-darwin-arm64.tar.gz"
      sha256 "268261bf8a352b4c0d1de95c367b2734f9eb4f535ac3541922266b6cb62f8181"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.63/pensar-darwin-x64.tar.gz"
      sha256 "2dc67f79bf74b5cd7aaf5dd556e6fdbcd71a0654b063e7cbbeeb59b4a95e689f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.63/pensar-linux-x64.tar.gz"
      sha256 "1df16060d8a052197ea186849903510bfe1db31577290cbf5a27eff7e2c503d6"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
