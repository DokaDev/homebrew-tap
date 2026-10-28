class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.8/slakio-v0.0.8-aarch64-apple-darwin.tar.gz"
      sha256 "cddd0f62eddf76800791c7c5cc71b8e3710ff7642613820edd0e093dc9f361f8"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.8/slakio-v0.0.8-x86_64-apple-darwin.tar.gz"
      sha256 "b36d3bbb3bf2347a7ff896e7ddf67fdbe0f27b7630befb25798e440a5ba91526"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.8/slakio-v0.0.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f4c3cdc62a31734af347d7def5e47442e726aeda4962d33082c12474a8b237d"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.8/slakio-v0.0.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3251e1a6ee7705e17869eee03c36e8c3100c398643b1aa0e39fe3ce0530132de"
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
