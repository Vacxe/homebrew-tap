class Googleplaycli < Formula
  desc "Command line interface for Google play"
  homepage "https://github.com/Vacxe/google-play-cli-kt"
  url "https://github.com/Vacxe/google-play-cli-kt/releases/download/0.4.1/google-play-cli.tar"
  sha256 "112c514f3677bca9e7efd0335a9f882c67b61e34f1fba469a4617c00a22f5029    "

  depends_on "openjdk@11"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"google-play-cli").write_env_script libexec/"bin/google-play-cli", Language::Java.overridable_java_home_env
  end
end
