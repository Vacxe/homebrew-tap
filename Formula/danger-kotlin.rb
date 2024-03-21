class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "1.3.0" 
  url "https://github.com/Vacxe/kotlin/releases/download/#{version}/danger-kotlin-macosArm64.tar"
  sha256 "0da105f8ed3d8c56cc0f924ec94a4b60c218b2326c602320090f7ec5657ff8af"
  head "https://github.com/danger/kotlin.git"

  # Use the vendored danger
  depends_on "danger/tap/danger-js"
  depends_on "kotlin"
  
 def install
    libexec.install %w[bin]
    prefix.install %w[lib]
    (bin/"danger-kotlin").write_env_script libexec/"bin/danger-kotlin", Language::Java.overridable_java_home_env
 end
end
