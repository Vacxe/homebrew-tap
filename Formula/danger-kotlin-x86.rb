class DangerKotlinX86 < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "1.3.0" 
  url "https://github.com/Vacxe/kotlin/releases/download/#{version}/danger-kotlin-macosX64.zip"
  sha256 "66d9754419f36ca812479b9a161244e81ada6f111bc55bbcee87f78863c415d2"
  head "https://github.com/danger/kotlin.git"

  # Use the vendored danger
  depends_on "danger/tap/danger-js"
  depends_on "kotlin"
  
 def install
    libexec.install %w[bin lib]
    (bin/"danger-kotlin").write_env_script libexec/"bin/danger-kotlin", Language::Java.overridable_java_home_env
  end
end
