class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.23.1/datarig-v0.23.1-aarch64-apple-darwin.tar.gz"
      sha256 "1a1ecdd5e98d22c2d71167ba4df179f16c833fe06bfa91a3bb863b52c14f8893"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.23.1/datarig-v0.23.1-x86_64-apple-darwin.tar.gz"
      sha256 "4da958f4f7acd85e5dd9f0a05661073c2c83ebd65edda16d1d6b79ffcad3472e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.23.1/datarig-v0.23.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dbc1659d9113483e83b2e16ee1c7b785159efe900bbd73bcdf52dae996b73878"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.23.1/datarig-v0.23.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "63daf806fdf6f3b10c2ae5bd3c02017260a63a48466fe6d206925f56af3e7b72"
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
