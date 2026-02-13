class Tuteliq < Formula
  desc "AI-powered child safety analysis from your terminal"
  homepage "https://tuteliq.ai"
  url "https://registry.npmjs.org/@tuteliq/cli/-/cli-2.1.0.tgz"
  # sha256 will be updated after npm publish
  sha256 ""
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "tuteliq", shell_output("#{bin}/tuteliq --version")
  end
end
