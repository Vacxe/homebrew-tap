class Googleplaycli < Formula
  desc "Command line interface for Google play"
  homepage "https://github.com/Vacxe/google-play-cli"
  url "https://github.com/Vacxe/google-play-cli/releases/download/0.1/googleplaycli-0.1.zip"
  sha256 "337b4c479b79a93961821617f9e3da5e8678e1579ea2fbfde54a6bbeeadb7b0f"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"googleplaycli").write_env_script libexec/"bin/googleplaycli", Language::Java.overridable_java_home_env
  end
end
