class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.28.0/datarig-v0.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "0f00d81092331b15c6603a50d8337e98cfe9b49670247723a044a6cc29dd8874"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.28.0/datarig-v0.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "ae1fc0e2c7a6f2e7fe21171801c0a1438b221205fd2469723dfb240bd75a6be2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.28.0/datarig-v0.28.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7e1190e3788a22fd77fb23301bcdf0072fc63f6ff1270aceee9b69ceadbfb255"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.28.0/datarig-v0.28.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aa1b20c57b4a57efc2978da25b74e44cf38f58c31afa98b82335d1c46a37ac97"
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
