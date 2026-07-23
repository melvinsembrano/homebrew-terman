class Terman < Formula
  desc "Terminal API Client: TUI and CLI for building and running HTTP requests"
  homepage "https://github.com/melvinsembrano/terman"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/melvinsembrano/terman/releases/download/v#{version}/terman-#{version}-darwin-amd64.tar.gz"
      sha256 "28df17d80fbc5ea2744089f65cef6ecd843e6d1f811da4b665e028e332a52336"
    end
    on_arm do
      url "https://github.com/melvinsembrano/terman/releases/download/v#{version}/terman-#{version}-darwin-arm64.tar.gz"
      sha256 "7acc98ed24f3548f401f96d3454139c4884c980f22145c11e05e98cbd7d79eb7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/melvinsembrano/terman/releases/download/v#{version}/terman-#{version}-linux-amd64.tar.gz"
      sha256 "18f38cf769b685fd115841d1bb7d799a51fee406f59725744e4e6a98dae00ebc"
    end
    on_arm do
      url "https://github.com/melvinsembrano/terman/releases/download/v#{version}/terman-#{version}-linux-arm64.tar.gz"
      sha256 "423957457678a154978a1b28f7bc20619fd1282b8b0498e8a2a1a94e3ea23f59"
    end
  end

  def install
    bin.install "terman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terman version")
  end
end
