class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.17.0/datarig-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "3359395a27dada140ca06c156fc71b07352b4fe4f52b1a6c622332bb1902025a"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.17.0/datarig-v0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "3ba436eb1406469c4bbb636ab74f352d94ef4729782bbe4e19cc20cacfcd5204"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.17.0/datarig-v0.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b3d0b4bf8bcc0e33edd0314c807e13ffa8522850a9d224cba39b6f2acce5e435"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.17.0/datarig-v0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6462662f9d4beb2a42ba799a503d5d860a41f905ad049d364b23e269a0efb8e0"
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
