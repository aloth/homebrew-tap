class Cred1 < Formula
  desc "CRED-1 domain credibility checker - library and CLI"
  homepage "https://github.com/aloth/cred-1"
  url "https://github.com/aloth/cred-1/archive/refs/tags/v2026-11-24.tar.gz"
  sha256 "c42ef1435462467e5f3fcd40e6d46a9fa7511464c1899d1e113dd7b5c5734970"
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
