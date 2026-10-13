class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.19.0/datarig-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "05a54f24ba1e2f8ddb9ffa638b7330850c6757ddf14b6b2de7e52eeb34a38827"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.19.0/datarig-v0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "e8fe6e4b63a9453d7f4efbd40deb0cc86008b8368ebe86e41185ac65a5b31884"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.19.0/datarig-v0.19.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "32d475bf4f807c4d84eb97da9250ca1ff01988724d4673b8f0be5d9ec75921a7"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.19.0/datarig-v0.19.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5fca0635fa77a07377c90014c795ba9aec4f513190eaab2ee72f70e787dc8b26"
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
