class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.10.0/datarig-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "788959812f0f68700c30186696508e6567924e5fce888f879d94ee14b4e6c2c8"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.10.0/datarig-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "e3acccd3db1ee5bce781c506b982eaad4f360cf00f27fe179dd1736c2037755a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.10.0/datarig-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "82185287d25fa41559619ecfc143777153eeb4dc18b9fb27f51aa3196de4fbeb"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.10.0/datarig-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "141e5bbbe500ef1da5456012243494322978fc7e9cdc540ac0c92493fbfa26ed"
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
