class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.10/slakio-v0.0.10-aarch64-apple-darwin.tar.gz"
      sha256 "c3388fa4eacc3c84849adfa66858a5ac07ae6c26c54824f850dc0781fb54a832"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.10/slakio-v0.0.10-x86_64-apple-darwin.tar.gz"
      sha256 "dc3f5a6bf69fe16f9e8a23c5f268ddcf870cc36b43eab3706c52e26550429973"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.10/slakio-v0.0.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d9d5c9d68f6667bec8ba37cd6145a4f97330b4ba6095979832a511c23851992"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.10/slakio-v0.0.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "35e01c63e94be2344fc0e8e614e33213cb5c593a3f6ca241a16d0fbe3152accb"
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
