class Apkinfoextractor < Formula
  desc "Command line took for extracting base info from apk files"
  homepage "https://github.com/Vacxe/apk-info-extractor"
  url "https://github.com/Vacxe/apk-info-extractor/releases/download/0.1/apkinfoextractor-0.1.zip"
  sha256 "38d56e78d37f1f017f3bae3ae79b77f4bbf27c6b3ce7f177c754fe683a3eec1e"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    (bin/"apkinfoextractor").write_env_script libexec/"bin/apkinfoextractor", Language::Java.overridable_java_home_env
  end
end
