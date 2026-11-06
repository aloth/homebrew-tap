class Olcli < Formula
  desc "Overleaf CLI with a git remote helper and MCP server"
  homepage "https://github.com/aloth/olcli"
  url "https://github.com/aloth/olcli/archive/refs/tags/v0.16.0.tar.gz"
  sha256 "156cc9a9554e5afacdaace72f04af31c2549a969f90e926381c9ca39d5565b09"
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
