class Kc < Formula
  desc "Store long secrets in the keychain without the 128-character prompt limit"
  homepage "https://github.com/wheelerlaw/kc"
  url "https://github.com/wheelerlaw/kc/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ee5ae5e7b9cf755feb1bc333a6c85534e5362c4a461a8fc3edb95f4093edff46"
  license "MIT"
  head "https://github.com/wheelerlaw/kc.git", branch: "main"

  depends_on :macos

  def install
    (buildpath/"version.swift").write "let kcVersion = \"#{version}\"\n"
    system "swiftc", "-O", "-o", "kc", "kc.swift", "version.swift"
    bin.install "kc"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/kc --version").strip
    assert_match "Usage", shell_output("#{bin}/kc 2>&1", 64)
  end
end
