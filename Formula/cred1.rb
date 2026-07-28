class Cred1 < Formula
  desc "CRED-1 domain credibility checker - library and CLI"
  homepage "https://github.com/aloth/cred-1"
  url "https://github.com/aloth/cred-1/archive/refs/tags/v2026-07-28.tar.gz"
  sha256 "b1dfb747442bfe0f1093551bb5a4a46f62608ba980f6fad1f512c03716c5682d"
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
