class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.89"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.89/pensar-darwin-arm64.tar.gz"
      sha256 "0a21c575bf37d5ddeabc98abfefa122446aa3b323f46779524c3e52928f32c8a"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.89/pensar-darwin-x64.tar.gz"
      sha256 "7ef9b321ff05784d75151bbf51074fb23e0e50dfb6430b89b47c0436b3ab617e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.89/pensar-linux-x64.tar.gz"
      sha256 "d66d090451936fc685ab883cce37a0aba68b3f22b72e927a34f587b23e6de1fa"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
