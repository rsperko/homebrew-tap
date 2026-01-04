class Diamond < Formula
  desc "Lightning-fast CLI for stacked pull requests"
  homepage "https://github.com/rsperko/diamond"
  url "https://crates.io/api/v1/crates/diamond-cli/0.1.1/download"
  sha256 "657e79b710a4ca0da8b41bb803a9ea594de2d107fcd849b92f492a3fe902b8b2"
  license "Apache-2.0"
  head "https://github.com/rsperko/diamond.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  def caveats
    <<~EOS
      ⚠️  Diamond is alpha software (v0.1.x). Expect rough edges.

      Diamond works best with squash merging enabled on GitHub/GitLab.
      See: https://github.com/rsperko/diamond#repository-setup-important

      Report issues: https://github.com/rsperko/diamond/issues
    EOS
  end

  test do
    system "#{bin}/dm", "--version"
    system "#{bin}/dm", "--help"
  end
end
