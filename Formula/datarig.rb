class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.5/datarig-v0.41.5-aarch64-apple-darwin.tar.gz"
      sha256 "2045d670a3faaca90ada583eb34f0331a3efea50d497fdaed7330ab0fa9ff902"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.5/datarig-v0.41.5-x86_64-apple-darwin.tar.gz"
      sha256 "e898f5c386ec06dc1bf26766c50735a97022fc4b5af6cf4e61850601829c460d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.5/datarig-v0.41.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "259ae8e1e0dda08be3377a5352b9f1b91bb54dd73b4382a05c68be261779b185"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.5/datarig-v0.41.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d855d17e1a75cabd5be9f0af058726e9ef62f579b1d6292655e433e55cb8025c"
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
