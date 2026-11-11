class Olcli < Formula
  desc "Overleaf CLI with a git remote helper and MCP server"
  homepage "https://github.com/aloth/olcli"
  url "https://github.com/aloth/olcli/archive/refs/tags/v0.16.2.tar.gz"
  sha256 "bcd9b9c86cf88f6a63ec8ba4e2b0bf0683f838384d3bf78d787d4a0e2d889baa"
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
