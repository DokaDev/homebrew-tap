class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.28/slakio-v0.0.28-aarch64-apple-darwin.tar.gz"
      sha256 "996adc10576847e74e3edb6ce0b5f8de530d2e4e74c1db1661447dd27f7268f1"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.28/slakio-v0.0.28-x86_64-apple-darwin.tar.gz"
      sha256 "26eb80bc6fee42ab06570e12d43c81b93aed3605dbc3b6842b24cb0bf60421fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.28/slakio-v0.0.28-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a4bdc4802bfc3f3ad373bb8d8042eb94d7de8cfeaa0132c7d63e661ba0ec2bc9"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.28/slakio-v0.0.28-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a1829583b59f0a2702f83c3aedb87c9cf66142cec9ac59801ab66a0978698e0a"
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
