class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.12/slakio-v0.0.12-aarch64-apple-darwin.tar.gz"
      sha256 "b8a934b35e18993b136632e9944801156fa96f03ebcc2295724575355336610a"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.12/slakio-v0.0.12-x86_64-apple-darwin.tar.gz"
      sha256 "6e101ec41db608ce6033219944d9fccb2381c4a4a15ba5f5c109651f23062647"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.12/slakio-v0.0.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a9cac6b50b346df8f2cb3e7f2115a8f2c39d94e0f105bf2b47d149c4d57ade0"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.12/slakio-v0.0.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6444a1c41f8373ff1b117b18a91f941a0dedf284d322ab693075d0d96e7a636f"
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
