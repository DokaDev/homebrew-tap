class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.23/slakio-v0.0.23-aarch64-apple-darwin.tar.gz"
      sha256 "9eb8fd7eff45c6fc8039f5b2e6f1a261c67cf2d5711583345460622e800996ef"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.23/slakio-v0.0.23-x86_64-apple-darwin.tar.gz"
      sha256 "98e44cfd4d402ee8df6977c5223bf07171713c72c9db345684811812e33b8362"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.23/slakio-v0.0.23-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "37e00b4d5a6c3b7fc13ba334c92d9bab4209e85fb83481e8cf34d5e59fda1800"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.23/slakio-v0.0.23-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "794adcf6d6ab142c9998ac167156674cfdee3686e2f3976d9de27349a20c5f39"
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
