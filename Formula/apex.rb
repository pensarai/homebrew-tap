class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.48/pensar-darwin-arm64.tar.gz"
      sha256 "c2a6c207bb0e9e7ca461e7dbc6b833027eefb07c5223acaa8d0c88443d34b7a6"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.48/pensar-darwin-x64.tar.gz"
      sha256 "ba0b6381ad15aaf63c5c7128cf80fdc5656c01f447c3285a07bfdf2c82aea0e3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.48/pensar-linux-x64.tar.gz"
      sha256 "9c1ace720e9db4a445c5a0a407651e3d790a97e42a11e5af63f2f1e7dd9cc61f"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
