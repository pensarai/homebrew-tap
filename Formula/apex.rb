class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.69"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.69/pensar-darwin-arm64.tar.gz"
      sha256 "0b988fb01fb43718d60045bb8922ad2ac7c35dc76da8bae583ada0bfc1add962"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.69/pensar-darwin-x64.tar.gz"
      sha256 "ce8258a3c9473dde1e31761c5aed7f010fa213dfdbae2f50cdd8a84ebd7df405"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.69/pensar-linux-x64.tar.gz"
      sha256 "3e43f7eb820b9554e2d549aeb29243991cd4c1c734cb8da323fd419858e83035"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
