class Googleplaycli < Formula
  desc "Command line interface for Google play"
  homepage "https://github.com/Vacxe/google-play-cli"
  url "https://github.com/Vacxe/google-play-cli/releases/download/0.1.1/googleplaycli-0.1.1.zip"
  sha256 "f39f2a82006150ee6c9116ac68eeab068ebd0a3a7bb5ab7dfe4e94baabf33f85"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"googleplaycli").write_env_script libexec/"bin/googleplaycli", Language::Java.overridable_java_home_env
  end
end
