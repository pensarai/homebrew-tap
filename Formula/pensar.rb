class Pensar < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.31/pensar-darwin-arm64.tar.gz"
      sha256 "ecaa58f901fb761d09df4f538341f8f17dc94ef3e816267c67f1a9cc5d6a5d6d"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.31/pensar-darwin-x64.tar.gz"
      sha256 "a6665f061701fb89775839204be644e9795d1b06392bbe6c2c9913bea3725fdd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.31/pensar-linux-x64.tar.gz"
      sha256 "affc89107d1aa0ae2ae5f1595caf41eb25b1b1a3083b820109a87e7b3a8ea0d4"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
