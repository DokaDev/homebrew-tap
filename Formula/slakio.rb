class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.27/slakio-v0.0.27-aarch64-apple-darwin.tar.gz"
      sha256 "3dd2c2e3882d6ad1d296c41029d90f06dc81967338e64979a6c2f4a4e4fca196"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.27/slakio-v0.0.27-x86_64-apple-darwin.tar.gz"
      sha256 "12743842923d69566698bd7b75e5b5c7d884d5beda5d8988368775df6f0fef4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.27/slakio-v0.0.27-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f4961accfd963f5a46c3a0674a44be42ad15a6c2fa686c96fc3f7ff3080b859c"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.27/slakio-v0.0.27-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "87824da833acc80b8ff25a96251f2249bf7b115e5fa10ecf3b7e42230eabd318"
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
