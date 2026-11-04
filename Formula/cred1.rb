class Cred1 < Formula
  desc "CRED-1 domain credibility checker - library and CLI"
  homepage "https://github.com/aloth/cred-1"
  url "https://github.com/aloth/cred-1/archive/refs/tags/v2026-11-03.tar.gz"
  sha256 "62186ae20d418a478d2b573f6d455b9a27c12475d63c1d392dbc0a4346af9d1e"
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
