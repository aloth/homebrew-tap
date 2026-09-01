class Olcli < Formula
  desc "Overleaf CLI - sync LaTeX projects from the command line"
  homepage "https://github.com/aloth/olcli"
  url "https://github.com/aloth/olcli/archive/refs/tags/v0.9.1.tar.gz"
  sha256 "e18fe09455d0e4ae8227a0294e966ba6b5513be4835863cd89e269ed77be450e"
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
