class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.33.0/datarig-v0.33.0-aarch64-apple-darwin.tar.gz"
      sha256 "8b7d0140e31421b76c1b6cb7a0bd940db12b86283544cc6d2b1651d917ffcc82"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.33.0/datarig-v0.33.0-x86_64-apple-darwin.tar.gz"
      sha256 "82649b8f72fc57a546c7c4d345a4c2cce394303460afe2f8a0948f1ea74ff516"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.33.0/datarig-v0.33.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dcaaee8d6815ada008a352f7c2b6b11d978c0bc33bf4e989062b3f39947cf0a1"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.33.0/datarig-v0.33.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f2d05ed9ebe2f74df0a0f3d1aabcec181facb1c186ef247a3ee0c19db6baba23"
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
