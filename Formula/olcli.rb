class Olcli < Formula
  desc "Overleaf CLI - sync LaTeX projects from the command line"
  homepage "https://github.com/aloth/olcli"
  url "https://github.com/aloth/olcli/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "910be073873b6a5e9810c89afd65ca72756ef745795ad77874ad4bba3723159e"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/olcli --version")
  end
end
