class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.0/datarig-v0.40.0-aarch64-apple-darwin.tar.gz"
      sha256 "4d51f8eba05da10271b5279f12bc9978af022cba2513a8c3da8ff4b4317355d2"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.0/datarig-v0.40.0-x86_64-apple-darwin.tar.gz"
      sha256 "dcf9fc540b35e94c1d77f336b0bc4b19cb39414aecd36fddd303e6f36bd962cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.0/datarig-v0.40.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9af581cc7c9a626afbbe574a8bfe985fc826140f0769de16b0053b5eef5a3f41"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.0/datarig-v0.40.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b544bea43fcae0b7790d9e72de80d319428b5b106eb1f5583ed073629bbaf33"
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
