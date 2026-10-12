class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.14.0/datarig-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "2b8e997f75dd15b803065eaa2280d3e5d712f905c4fff3bcac4de4d390f73a66"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.14.0/datarig-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "242f4e9a04437ffe7fbf26eb4d1d91fbed09f9296d8b23045749856719d16edb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.14.0/datarig-v0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c0712289ee0842237f6deda756170e2d000fdc56f8f6d4eff06939c4025a0f2"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.14.0/datarig-v0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c34adee2cdeb72b187745f7613b1ec9fa4a15f2afdbc88cc056142386581ecdc"
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
