class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.36.1/datarig-v0.36.1-aarch64-apple-darwin.tar.gz"
      sha256 "34a82571bd50c91239a06fd8f5704e04a6b91953274492f56c48f7292130026b"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.36.1/datarig-v0.36.1-x86_64-apple-darwin.tar.gz"
      sha256 "78ccb4fa6a68763676f7211f20bb713454be38ab713634f81dcf18fa4d61dc54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.36.1/datarig-v0.36.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "453a795989d27f50527ce558a876903c47bc3dcfefff771324be606448e5d23f"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.36.1/datarig-v0.36.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c7c31ade5469837fa2bd1265b14050964c945ba8df6e9ef754d3ab88e56120a7"
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
