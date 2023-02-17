class Googleplaycli < Formula
  desc "Command line interface for Google play"
  homepage "https://github.com/Vacxe/google-play-cli-kt"
  url "https://github.com/Vacxe/google-play-cli-kt/releases/download/0.3.7/google-play-cli-0.3.7.zip"
  sha256 "5f6d8b21715c448a324320b3b26ee6cd846125f7722189576c20a0aada7b11a4"

  depends_on "openjdk@11"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"google-play-cli").write_env_script libexec/"bin/google-play-cli", Language::Java.overridable_java_home_env
  end
end
