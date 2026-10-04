class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.1.0/datarig-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "9f9d9ef03bc39947124276fe5ea275a16e7638f1f246f768fe1e5749b8cbc20e"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.1.0/datarig-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "cc6b26c15aa9521571889bd2f2c09a8555eb94f3f7524922b34223e8e12277b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.1.0/datarig-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d20a5a97d5cc51960fa7a293373f26dbbffdbd8b6eaa22f0e5511e2a355fc06b"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.1.0/datarig-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c723e9f91d475cda69d4b4484da1680879e6162267bfb642c9709a752cf59418"
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
