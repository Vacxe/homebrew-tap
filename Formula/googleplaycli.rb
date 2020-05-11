class Googleplaycli < Formula
  desc "Command line interface for Google play"
  homepage "https://github.com/Vacxe/google-play-cli"
  url "https://github.com/Vacxe/google-play-cli/releases/download/0.1.2/google-play-cli-0.1.2.zip"
  sha256 "265c5e8cd2c1681fc6d9ca566f5ecd8e7ee736b4dde512a75ddda7c493e0b94b"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"googleplaycli").write_env_script libexec/"bin/googleplaycli", Language::Java.overridable_java_home_env
  end
end
