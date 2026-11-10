class Cred1 < Formula
  desc "CRED-1 domain credibility checker - library and CLI"
  homepage "https://github.com/aloth/cred-1"
  url "https://github.com/aloth/cred-1/archive/refs/tags/v2026-11-10.tar.gz"
  sha256 "ab3571fe7221e10fb32fb5ddff5f842758cb66b71eebd2a678fa4ae31dd45641"
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
