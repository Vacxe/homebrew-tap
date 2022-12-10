class Googleplaycli < Formula
  desc "Command line interface for Google play"
  homepage "https://github.com/Vacxe/google-play-cli-kt"
  url "https://github.com/Vacxe/google-play-cli-kt/releases/download/0.2.0/google-play-cli-0.2.0.zip"
  sha256 "598538e433a21a2a0f0f32b9928697832a5f37834ca74f7f66f1cb08a94343ea"

  bottle :unneeded

  depends_on :java => "openjdk@12"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"google-play-cli").write_env_script libexec/"bin/google-play-cli", Language::Java.overridable_java_home_env
  end
end
