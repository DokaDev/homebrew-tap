class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.5/datarig-v0.40.5-aarch64-apple-darwin.tar.gz"
      sha256 "5cee9e5eed7992e5069c147c1b3cefada7b601df15f24dc90bf75ab43289f365"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.5/datarig-v0.40.5-x86_64-apple-darwin.tar.gz"
      sha256 "d841c27f20c947546f2146b652ba9a5d83cf4d353d4214e5dcf6fa80313ec12f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.5/datarig-v0.40.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "40861c4f1a526509d449f01e288ab0170b4ed14cba85bce4c99c2f9eb61ea8cd"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.5/datarig-v0.40.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9fdea840f74f1b5fb050de7884019f2b1b5907df785123b26b100035c44e3608"
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
