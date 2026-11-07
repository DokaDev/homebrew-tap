class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.18/slakio-v0.0.18-aarch64-apple-darwin.tar.gz"
      sha256 "731831a10545395e18414ca62ea2cc1b1d44d29ab72baed954da6c83742f7529"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.18/slakio-v0.0.18-x86_64-apple-darwin.tar.gz"
      sha256 "aee556df9a1c14eed6c5eea7bde3a694360ef9a5d3e04ae83ec405594e701df7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.18/slakio-v0.0.18-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d002bf378e9e543a0956d49ecd0869451bcfc5d672bd41823b562e39c6a5f9df"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.18/slakio-v0.0.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c68f297d6e8747591cbb3aa5dde50e74780fe4baffc56a1f8864106eb28f1de8"
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
