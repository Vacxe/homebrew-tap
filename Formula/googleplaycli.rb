class Googleplaycli < Formula
  desc "Command line interface for Google play"
  homepage "https://github.com/Vacxe/google-play-cli-kt"
  url "https://github.com/Vacxe/google-play-cli-kt/releases/download/0.4.0/google-play-cli.tar"
  sha256 "213c3f24c0584e2f6f7c599f9d7d4738323f69e2fa3767c6de1a422e8adf6c2d"

  depends_on "openjdk@11"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"google-play-cli").write_env_script libexec/"bin/google-play-cli", Language::Java.overridable_java_home_env
  end
end
