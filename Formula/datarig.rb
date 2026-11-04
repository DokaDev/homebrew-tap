class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.38.0/datarig-v0.38.0-aarch64-apple-darwin.tar.gz"
      sha256 "c97d0e943548335174e98b9a3177484f65fd43dbfcf57c40ecde1e963f8d889b"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.38.0/datarig-v0.38.0-x86_64-apple-darwin.tar.gz"
      sha256 "fa0c51c516e06716163d8357927818e3731000b537925c1debb8b31d860781d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.38.0/datarig-v0.38.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ed1dcc2dd5edf116941c261d87f93187e8d6fee3a493906cce15daf7966e52b"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.38.0/datarig-v0.38.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "df63042b18bf695f76f0bfd0f13887df5ca2823207d966737dd7ee787d0b67b3"
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
