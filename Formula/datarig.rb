class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.37.1/datarig-v0.37.1-aarch64-apple-darwin.tar.gz"
      sha256 "2fc06aabb0c9809182afdfc93c5d4f8816db22ae027397573342357e174c2a98"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.37.1/datarig-v0.37.1-x86_64-apple-darwin.tar.gz"
      sha256 "1bf096663461fa1bd0906180658df4cea6fb1e4c5130b9febf0c6a82b4393480"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.37.1/datarig-v0.37.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "36c019103c4e999042ef6f68c35b7d1a2b9d0f8af70c685befb845f236c17399"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.37.1/datarig-v0.37.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "38fa78f588fee30cda7b25dfbf34e58a5298d8ba73f049e58c3ce7f6aa2ee9e9"
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
