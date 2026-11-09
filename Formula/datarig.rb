class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.1/datarig-v0.40.1-aarch64-apple-darwin.tar.gz"
      sha256 "52de3d84cb6bfbfa065ccf8df6c2091512338615d6f01c582548989f4523438a"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.1/datarig-v0.40.1-x86_64-apple-darwin.tar.gz"
      sha256 "48f906a2170ec8a978f571501bcde074f0af5fbeb297145f3c420d2defbaff29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.1/datarig-v0.40.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0df6fbede8b2eecbad25328562d8d737e3f6dd35aeab4292fbac59a17fcabdb3"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.1/datarig-v0.40.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f8c4d1713f14f89622753c30c44c7fabef5a9560cbac8abcf363042bd6d3be53"
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
