class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.39/pensar-darwin-arm64.tar.gz"
      sha256 "5763b047ea1f5d864b8b8e9880f8ed06f65a40cdce5e6aa86014256d13d29539"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.39/pensar-darwin-x64.tar.gz"
      sha256 "665204474572da133f845a2f62b43e80cbff8447422afe23b3c705a2da3b0c83"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.39/pensar-linux-x64.tar.gz"
      sha256 "35d22680ce94a5338aace7edec6c3973d4c3571394827bcbc675ee123fd49287"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
