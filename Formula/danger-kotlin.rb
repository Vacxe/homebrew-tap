class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "1.3.0" 
  url "https://github.com/Vacxe/kotlin/releases/download/#{version}/danger-kotlin-macosArm64.tar"
  sha256 "fcf6562dab77c060e4ffc04e981a1ab54b7ac6855a7c97d4a081772494e2ef7a"
  head "https://github.com/danger/kotlin.git"

  # Use the vendored danger
  depends_on "danger/tap/danger-js"
  depends_on "kotlin"
  
 def install
    libexec.install %w[bin lib]
    (bin/"danger-kotlin").write_env_script libexec/"bin/danger-kotlin", Language::Java.overridable_java_home_env
  end
end
