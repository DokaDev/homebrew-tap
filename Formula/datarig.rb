class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.31.0/datarig-v0.31.0-aarch64-apple-darwin.tar.gz"
      sha256 "bbb18e9fee1293ea5120b8e5cbe63ea3012a62c862939086f22f1102c6efebce"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.31.0/datarig-v0.31.0-x86_64-apple-darwin.tar.gz"
      sha256 "1eb9e5e2326ffe80cfacb8327e5e1b88381634a9ba16a056f0f92d43605113b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.31.0/datarig-v0.31.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b163239f3fb4d4e6f87c90f9c1a93efcc68b92a91f49a4371ff467f1cb8f05fd"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.31.0/datarig-v0.31.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2bc77d69a60b02da8e8dd48d24590d427c7f363df4ed56d8332c30b0a0f06b81"
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
