class Terman < Formula
  desc "Terminal API Client: TUI and CLI for building and running HTTP requests"
  homepage "https://github.com/melvinsembrano/terman"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/melvinsembrano/terman/releases/download/v#{version}/terman-#{version}-darwin-amd64.tar.gz"
      sha256 "45e75d868f1001b75e35c2ec7803327546faf6b01dd239b5a624e2b1886b97e2"
    end
    on_arm do
      url "https://github.com/melvinsembrano/terman/releases/download/v#{version}/terman-#{version}-darwin-arm64.tar.gz"
      sha256 "afa87759a98a13daf59e61e9178d6bec48354e4f198c9c17951e064d27c4bd0d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/melvinsembrano/terman/releases/download/v#{version}/terman-#{version}-linux-amd64.tar.gz"
      sha256 "cab9bc693534e7badaac47c0013567d2030bc5dbdbfa0eb3f88f85bef54685fa"
    end
    on_arm do
      url "https://github.com/melvinsembrano/terman/releases/download/v#{version}/terman-#{version}-linux-arm64.tar.gz"
      sha256 "978f1a868696825669d1f110a6fe9dac993f881395b36191115df4c996d8e42e"
    end
  end

  def install
    bin.install "terman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terman version")
  end
end
