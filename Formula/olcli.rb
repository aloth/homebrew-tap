class Olcli < Formula
  desc "Overleaf CLI with a git remote helper and MCP server"
  homepage "https://github.com/aloth/olcli"
  url "https://registry.npmjs.org/@aloth/olcli/-/olcli-0.19.0.tgz"
  sha256 "c7e0d566e529244d1cdbec55be5cf982f140b73f973c286eeb1a9b8dab6ea683"
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
