class Terman < Formula
  desc "Terminal API Client: TUI and CLI for building and running HTTP requests"
  homepage "https://github.com/melvinsembrano/terman"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/melvinsembrano/terman/releases/download/v#{version}/terman-#{version}-darwin-amd64.tar.gz"
      sha256 "8361ba2054b9270882e6627ebbd1ef712c88252020264baf09a6d41d8370bf0b"
    end
    on_arm do
      url "https://github.com/melvinsembrano/terman/releases/download/v#{version}/terman-#{version}-darwin-arm64.tar.gz"
      sha256 "24b49d687ef5e0db0cf06db1631c24defe34593fb3777d020bf99262c512ff5e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/melvinsembrano/terman/releases/download/v#{version}/terman-#{version}-linux-amd64.tar.gz"
      sha256 "9e1c597262986d65719c7093b4458263c31434d940ce33d5d25d38f32b2ac8ea"
    end
    on_arm do
      url "https://github.com/melvinsembrano/terman/releases/download/v#{version}/terman-#{version}-linux-arm64.tar.gz"
      sha256 "d0d8732c9f75e51fd292d214279d2bf0b25b3d4506176bc618c4f4f6eb35aa27"
    end
  end

  def install
    bin.install "terman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terman version")
  end
end
