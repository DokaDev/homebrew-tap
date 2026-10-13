class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.21.0/datarig-v0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "d983b1aafb55632b2129291c8b6a02fc8770b89a583691e2c1241e10874f6d64"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.21.0/datarig-v0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "fccabbff8c8457c7a293f196b69a1e7ae891eb9299eef26b73e7c7b88e4a1268"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.21.0/datarig-v0.21.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f1e6a856c2be2ba05b7779420b9b2baae8308215ce8751f59a4c13cdf6ac06c7"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.21.0/datarig-v0.21.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d03ecea53b54f6002516cff79c5d384d5fb4fe872b2d2272d88eb08adae5c7f"
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
