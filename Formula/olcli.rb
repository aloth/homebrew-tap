class Olcli < Formula
  desc "Overleaf CLI - sync LaTeX projects from the command line"
  homepage "https://github.com/aloth/olcli"
  url "https://registry.npmjs.org/@aloth/olcli/-/olcli-0.9.0.tgz"
  sha256 "e82fdac3fef8a1b43103ad4a29adf7e2130c06c2ab3c8b7420bb7fd935839f44"
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
