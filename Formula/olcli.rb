class Olcli < Formula
  desc "Overleaf CLI - sync LaTeX projects from the command line"
  homepage "https://github.com/aloth/olcli"
  url "https://github.com/aloth/olcli/archive/refs/tags/v0.15.1.tar.gz"
  sha256 "8e4d063a2b10af1ccdbec8bafcc6677844a1b718398f791780f35efae38f8332"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(ignore_scripts: false)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/olcli --version")
  end
end
