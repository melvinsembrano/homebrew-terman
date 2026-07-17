class Terman < Formula
  desc "Terminal API Client: TUI and CLI for building and running HTTP requests"
  homepage "https://github.com/melvinsembrano/terman"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/melvinsembrano/terman/releases/download/v#{version}/terman-#{version}-darwin-amd64.tar.gz"
      sha256 "b981f54293d46403afe64424ec0ad383f56e8715f45f2f4bcdf53949dcce1a5c"
    end
    on_arm do
      url "https://github.com/melvinsembrano/terman/releases/download/v#{version}/terman-#{version}-darwin-arm64.tar.gz"
      sha256 "91c81a28b16aea572aff27c1f9483ab2f22235e3a39d901d8f99ca50628dd0af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/melvinsembrano/terman/releases/download/v#{version}/terman-#{version}-linux-amd64.tar.gz"
      sha256 "7a8beb3b349d307114aa96f93dfe789f42f3a6bfdf5ca6ada9298dac17507c84"
    end
    on_arm do
      url "https://github.com/melvinsembrano/terman/releases/download/v#{version}/terman-#{version}-linux-arm64.tar.gz"
      sha256 "0c60d89192c02392ed227cb5704f7a1e48efa31c1bd5f043f02ccab849fbfef0"
    end
  end

  def install
    bin.install "terman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terman version")
  end
end
