class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.70"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.70/pensar-darwin-arm64.tar.gz"
      sha256 "0af0a020b595cec464b9ac7785c799ed37372bd328cf0649feb7a72eab685582"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.70/pensar-darwin-x64.tar.gz"
      sha256 "08aa6f790eb6a7cc7caa010add58dfc1c96eee2b92345945d8910fb4edb07945"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.70/pensar-linux-x64.tar.gz"
      sha256 "eba5920c5f09dcec943cd458e38f9cfca9a21eae4d6dff42da4ef207ca0c3bf8"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
