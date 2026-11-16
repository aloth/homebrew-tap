class Olcli < Formula
  desc "Overleaf CLI with a git remote helper and MCP server"
  homepage "https://github.com/aloth/olcli"
  url "https://registry.npmjs.org/@aloth/olcli/-/olcli-0.18.0.tgz"
  sha256 "2790eddde95cb23f0052b673828d9a89757383f5a5fd14d997d3792c78ee097b"
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
