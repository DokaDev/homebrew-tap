class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.30.0/datarig-v0.30.0-aarch64-apple-darwin.tar.gz"
      sha256 "34190891adffe7075888980e77f4d5e6b456346b56e60c3b2bac430610ba135f"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.30.0/datarig-v0.30.0-x86_64-apple-darwin.tar.gz"
      sha256 "13a55fc3987bab6b23dd32fe58d10c8ad7ae9bc6ab713fb1a3107dfeb4501910"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.30.0/datarig-v0.30.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "054c9b96fb2e4e3bec8f8a4d37742194dd990868b969c1f74b3c580ed32619dc"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.30.0/datarig-v0.30.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e1abea0b858c57c9090a6e310e4c8ac86432796e7130059877e1125fd395bc32"
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
