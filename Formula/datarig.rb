class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.32.0/datarig-v0.32.0-aarch64-apple-darwin.tar.gz"
      sha256 "2310b38398a53e78e16e0982916bafb58080e379cf25e51c4b4186ec0c3421a1"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.32.0/datarig-v0.32.0-x86_64-apple-darwin.tar.gz"
      sha256 "6086d916c8b2f7e69d0e08c3e2833b6096cd484f95a2491363f1ffab957afeed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.32.0/datarig-v0.32.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "882feec149df77423052334a60334655cfff7adac83a9c18295f5d9be6882884"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.32.0/datarig-v0.32.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4e8608a7a19390fb2b4d6ecffb59b236e8db2a385352dedfe413e3a2743a929a"
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
