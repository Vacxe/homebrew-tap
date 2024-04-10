class Googleplaycli < Formula
  desc "Command line interface for Google play"
  homepage "https://github.com/Vacxe/google-play-cli-kt"
  url "https://github.com/Vacxe/google-play-cli-kt/releases/download/0.4.2/google-play-cli.tar"
  sha256 "06677905afd08b85b44375f5e3acb73bffaa88c5052ca552927e628e95762084"

  depends_on "openjdk@11"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"google-play-cli").write_env_script libexec/"bin/google-play-cli", Language::Java.overridable_java_home_env
  end
end
