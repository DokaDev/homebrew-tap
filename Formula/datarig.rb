class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.9.0/datarig-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "2d5ef639286e8bd67e30522ff88736986d6e439e2aaee0ba890710c2c3097f80"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.9.0/datarig-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "ffd34dde2460f5ddf6eac3a663549166ea028aabf2bc22366b4b411ab6e96df2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.9.0/datarig-v0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c8d27708c4292658faca665c4229649a68ac84e6a84dc46bdeb1ca7ce2e012ec"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.9.0/datarig-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "811e05f07e99ffed8b953cb478673fb61043ced5d95daff3702dd2ffbbbbfc48"
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
