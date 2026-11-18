class Olcli < Formula
  desc "Overleaf CLI with a git remote helper and MCP server"
  homepage "https://github.com/aloth/olcli"
  url "https://registry.npmjs.org/@aloth/olcli/-/olcli-0.18.1.tgz"
  sha256 "9abab0836f90ff975dc0ecddc451a7c2f0ad303a85e106fcd9e3574851b36dbb"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/olcli --version")
    assert_path_exists bin/"git-remote-overleaf"
  end
end
