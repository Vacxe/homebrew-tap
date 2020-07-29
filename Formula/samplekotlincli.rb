class Samplekotlincli < Formula
  desc "Sample of kotlin cli"
  homepage "https://github.com/Vacxe/SampleKotlinCli"
  url "https://github.com/Vacxe/SampleKotlinCli/releases/download/0.0.1/samplekotlincli.zip"
  sha256 "e4b9a33845608117d285b77db8cb6e31b7bdae74fd7d29a7514fedf5bafe2de0"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"samplekotlincli").write_env_script libexec/"bin/samplekotlincli", Language::Java.overridable_java_home_env
  end
end
