class Cred1 < Formula
  desc "CRED-1 domain credibility checker - library and CLI"
  homepage "https://github.com/aloth/cred-1"
  url "https://github.com/aloth/cred-1/archive/refs/tags/v2026-08-04.tar.gz"
  sha256 "abed579fb1b9f05313affb013429fbf0ae017e624cb09e100b1bbb7fd17d365f"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(ignore_scripts: false)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "CRED-1", shell_output("#{bin}/cred1 stats")
  end
end
