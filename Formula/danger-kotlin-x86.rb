class DangerKotlinX86 < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "1.3.0" 
  url "https://github.com/Vacxe/kotlin/releases/download/#{version}/danger-kotlin-macosX64.tar"
  sha256 "c453fcb08ef59a261099c47a09699eff18f59c53ccae82ff79deb1142106eb82"
  head "https://github.com/danger/kotlin.git"

  # Use the vendored danger
  depends_on "danger/tap/danger-js"
  depends_on "kotlin"
  
 def install
    libexec.install %w[bin lib]
    #(bin/"danger-kotlin").write_env_script libexec/"bin/danger-kotlin", Language::Java.overridable_java_home_env
  end
end
