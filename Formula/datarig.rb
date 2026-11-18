class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.4/datarig-v0.41.4-aarch64-apple-darwin.tar.gz"
      sha256 "91bc09ac228fa9dced1a6da3196708dc89d38d71e39dd3890b1a3c0d8d6914ae"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.4/datarig-v0.41.4-x86_64-apple-darwin.tar.gz"
      sha256 "5974e81208e228f57c2ba771af6601d6207cf110c4a800a5ba4babd65ffd5c92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.4/datarig-v0.41.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0153870dddec72fad042f277d29ee0fb990b6a39f0f72432075c4e756ee55d1d"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.4/datarig-v0.41.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b67f15428a4b5cde3a1b546961f9250ddb8a3d5c389804bad5bfeb780fe5127e"
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
