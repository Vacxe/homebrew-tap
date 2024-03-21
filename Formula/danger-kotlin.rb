class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "1.3.0" 
  url "https://github.com/Vacxe/kotlin/releases/download/#{version}/danger-kotlin-macosArm64.tar"
  sha256 "e762ddadcc8a22d6b4a5b76e37b02d410a002a50bce587770bbb07e8b48b8fb0"
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
