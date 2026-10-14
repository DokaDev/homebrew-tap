class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.24.0/datarig-v0.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "765553bfc4673d2b71f98a4395052748a37e1ee1443b639b03e1ae5a6c953205"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.24.0/datarig-v0.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "7706c2da88adf44ab514f09b1737e8e97ffbf9ea04cd98436c64b2006ba1fba7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.24.0/datarig-v0.24.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0ef876f4319692e3eaa564e2385c4c80168efae8079362bd3cd59812a8602831"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.24.0/datarig-v0.24.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e9d5c43b4d5f7191d9e9ebf4059724df049024758d85eed9a40be76212327bd4"
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
