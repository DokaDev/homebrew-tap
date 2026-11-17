class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.2/datarig-v0.41.2-aarch64-apple-darwin.tar.gz"
      sha256 "3bf17f57ca3992c4b2ed956ebfa56770618622f60f8544bc2ea7cefbf5a7abf3"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.2/datarig-v0.41.2-x86_64-apple-darwin.tar.gz"
      sha256 "5133b2a83735f2db11fbec04001334575f8098e515a9f5dd8de0870687d18791"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.2/datarig-v0.41.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "13d1b6bd111ce7dd6c9c1e09be28a110741202117a4fc12f038282361cf739a3"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.2/datarig-v0.41.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "25af2b7a40be1f638e01b386786e27339094aa445bac5251bb10d4f365d21390"
    end
  end

  def install
    bin.install "datarig"
    doc.install "README.md", "THIRD-PARTY-NOTICES.html", "licenses"
  end

  test do
    assert_equal "datarig #{version}", shell_output("#{bin}/datarig --version").strip
  end
end
