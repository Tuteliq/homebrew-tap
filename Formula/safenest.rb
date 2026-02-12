class Safenest < Formula
  desc "AI-powered child safety analysis from your terminal"
  homepage "https://safenest.dev"
  url "https://registry.npmjs.org/@safenest/cli/-/cli-1.1.0.tgz"
  sha256 "6e59f519e67737f27353b8e0d8c404c451796f73966eb1245fec9ef19349ac73"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "safenest", shell_output("#{bin}/safenest --version")
  end
end
