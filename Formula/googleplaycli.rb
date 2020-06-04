class Googleplaycli < Formula
  desc "Command line interface for Google play"
  homepage "https://github.com/Vacxe/google-play-cli"
  url "https://github.com/Vacxe/google-play-cli/releases/download/0.1.3/google-play-cli-0.1.3.zip"
  sha256 "1fc4a2e3c780f3e0881f7ce18e541ca4f237076b219588e3c0bdb9ae0f8507d9"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"google-play-cli").write_env_script libexec/"bin/google-play-cli", Language::Java.overridable_java_home_env
  end
end
