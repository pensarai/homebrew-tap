class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "2.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v2.6.1/pensar-darwin-arm64.tar.gz"
      sha256 "43f6a93fb7234c81fc1c1621e97bbce2cdd79bfd47416b05c290bf632836151e"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v2.6.1/pensar-darwin-x64.tar.gz"
      sha256 "685aa48a2227da25188476bd2cd32ca5932efb1fd7f8670dec1da23fdf9ff082"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v2.6.1/pensar-linux-x64.tar.gz"
      sha256 "1fb40802d9607986cb7432b93ca7975d8efac747fe2b36d3d2750b26aae3cf6b"
    end
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v2.6.1/pensar-linux-arm64.tar.gz"
      sha256 "f70e7cc944d2d738cd7258a4f65722a0c6ade9f9b36b7302e7bdfc16ca74a91a"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
