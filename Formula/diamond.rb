class Diamond < Formula
  desc "Lightning-fast CLI for stacked pull requests"
  homepage "https://github.com/rsperko/diamond"
  url "https://github.com/rsperko/diamond/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "d57151f13600adadff322fe38e8ee0782eaa91b43857affbd4b06b419d9821ca"
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
