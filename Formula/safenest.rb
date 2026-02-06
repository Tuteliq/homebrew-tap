class Safenest < Formula
  desc "AI-powered child safety analysis from your terminal"
  homepage "https://safenest.dev"
  url "https://registry.npmjs.org/@safenest/cli/-/cli-1.0.0.tgz"
  sha256 "92b5ce8ac683e52e1c549f2bb50bdc2bdba6dba730e79735d2d87a57a4f57694"
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
