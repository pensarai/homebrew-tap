class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.49"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.49/pensar-darwin-arm64.tar.gz"
      sha256 "b5deb7fd256a878f011240d9ee64d6c9640ada85caf2bf7a9482ecb525d44ad2"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.49/pensar-darwin-x64.tar.gz"
      sha256 "69c5a5ae874350343f317992681d8fc3472934b2b472de264fea335c7ed4373d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.49/pensar-linux-x64.tar.gz"
      sha256 "cdf18b946c0118b30faa7c2ac065cd79ac04daf8298541dcf8179974beb1a1a4"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
