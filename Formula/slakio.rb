class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.20/slakio-v0.0.20-aarch64-apple-darwin.tar.gz"
      sha256 "c8a61eced3a5fac11515313449dc14f0b1c92d25a1f89d2c07c19db3003e2d0b"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.20/slakio-v0.0.20-x86_64-apple-darwin.tar.gz"
      sha256 "6d8efabccb8d1e34dbfde9912bc240c132042e150fbe210d537081ed3eff41d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.20/slakio-v0.0.20-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f7cc75e8b93bf03eabb1595ae64d3d2057ecfaa44278dd4a8f39d1c03e303253"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.20/slakio-v0.0.20-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9dedd4677475c6a7ab3731fa5797e85abe941cf126f27aec8d89735a9325c4be"
    end
  end

  def install
    bin.install "slakio"
    doc.install "README.md", "THIRD-PARTY-NOTICES.html"
  end

  test do
    assert_equal "slakio #{version}", shell_output("#{bin}/slakio --version").strip
  end
end
