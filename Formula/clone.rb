class Clone < Formula
  desc "Git clone wrapper that organizes repos into a host/org/repo directory layout"
  homepage "https://github.com/wheelerlaw/clone"
  url "https://github.com/wheelerlaw/clone/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "5427024c39d68b1c57c1aa4428c9bb5c013a6f810d8c562de8eb36ab504e4dfc"
  license "MIT"
  head "https://github.com/wheelerlaw/clone.git", branch: "main"

  def install
    bin.install "clone"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/clone 2>&1", 1)
  end
end
