class Clone < Formula
  desc "Git clone wrapper that organizes repos into a host/org/repo directory layout"
  homepage "https://github.com/wheelerlaw/clone"
  url "https://github.com/wheelerlaw/clone/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "162edd90422fab334bdccae298a5dbb4603ba4ae22f0435fc9c5ae6a6bb0a2aa"
  license "MIT"
  head "https://github.com/wheelerlaw/clone.git", branch: "main"

  def install
    bin.install "clone"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/clone 2>&1", 1)
  end
end
