class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.13.1/datarig-v0.13.1-aarch64-apple-darwin.tar.gz"
      sha256 "831eef8fb8da66d8bf016e335ff0141efc78aa7d92fd95a440167363005003ea"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.13.1/datarig-v0.13.1-x86_64-apple-darwin.tar.gz"
      sha256 "d1362e7ea259693b0c7dda98549e73b480366d8382765bc02ef301b5e9e65632"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.13.1/datarig-v0.13.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0313758cf9cc7f6ee4ceb7aab24591a406de7517a904bae8eee9dcf39ab66992"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.13.1/datarig-v0.13.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "36cbf3359e8887ff44b3e54e782cc47d2f9b0c914e4924714c0005ef8ee12bdf"
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
