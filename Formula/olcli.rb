class Olcli < Formula
  desc "Overleaf CLI - sync LaTeX projects from the command line"
  homepage "https://github.com/aloth/olcli"
  url "https://github.com/aloth/olcli/archive/refs/tags/v0.15.2.tar.gz"
  sha256 "8c9367119597e7b35b047306ad08cd4d8732735e8a7aba239ce53e473b965df7"
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
