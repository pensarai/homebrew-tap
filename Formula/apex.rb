class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.54"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.54/pensar-darwin-arm64.tar.gz"
      sha256 "52ba0e0dd324b942a210ff4fa30ea55763e5ec341bc450841d67dc1b2bfed874"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.54/pensar-darwin-x64.tar.gz"
      sha256 "0ec2e9d2fe1079077f833ad589174c98449fc03f468d5f2b5dde15578ae905cb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.54/pensar-linux-x64.tar.gz"
      sha256 "10fd7db46aaebea14630779d9d71cc57d3f280032d754cd5f84f3521c15cfaaa"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
