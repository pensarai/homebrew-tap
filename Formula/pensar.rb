class Pensar < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.30/pensar-darwin-arm64.tar.gz"
      sha256 "8e6bcbec911287c04d0ced4401932b53ffb3fe412464fcc05e393e1be1ea00b5"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.30/pensar-darwin-x64.tar.gz"
      sha256 "3c262f90dc1c7fa5b0550c8b28e25ee243ebb3d1cfacd218820b7e66ca3a43ad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.30/pensar-linux-x64.tar.gz"
      sha256 "c90e15cea586e0aba2e4f8d22e75a3991f1f363688cb9a9b90e8a01503eaa22c"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
