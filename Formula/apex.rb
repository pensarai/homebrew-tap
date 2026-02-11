class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.57"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.57/pensar-darwin-arm64.tar.gz"
      sha256 "19274881267ffc198d65be32469786285fc5c970e351a3180f31fe30c2b81363"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.57/pensar-darwin-x64.tar.gz"
      sha256 "448cd1de5c825d95b6a22a095f7ca4d075144da65b6585866aefc772a693fe5c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.57/pensar-linux-x64.tar.gz"
      sha256 "492c4c3af5ac762cbed090128b57e99ca1058debaf077ce8cf67c3a95c562896"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
