class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.0/datarig-v0.41.0-aarch64-apple-darwin.tar.gz"
      sha256 "f3536b4761cb751634f2aa92cb42faa1f52b7666158e51d2bde66ff62f6400fb"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.0/datarig-v0.41.0-x86_64-apple-darwin.tar.gz"
      sha256 "66ccb570d2d4cccf1453089214086ef331c5357ddc0de714b9bf8dacf511d64e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.0/datarig-v0.41.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "65f615e717bfdd562b09e3c51aa5a3baa230dc4d4db97896e5e863f3c419c6a7"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.0/datarig-v0.41.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "914c7b3325e35d3863128abfb40fdf9bfe417054d0ddc1cdd4fa6ec36559a878"
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
