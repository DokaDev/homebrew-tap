class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.29.0/datarig-v0.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "eed706e2c676cee2f663aadb90509f63347c95c8c46d7bf5a2f5d72ee357f17e"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.29.0/datarig-v0.29.0-x86_64-apple-darwin.tar.gz"
      sha256 "a98280313a418137a15b741bd4e0624c048b98adbdfcee23ddb90ca1077b4a5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.29.0/datarig-v0.29.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "80d12ab275fe298a7da838c0212ee51df4e854c2c739c5d108a33847fc436704"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.29.0/datarig-v0.29.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10594f2ff2b9207bd591ae6e823707ed90b76bfe700b83267b825aed4c688d28"
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
