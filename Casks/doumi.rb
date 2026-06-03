cask "doumi" do
  version "0.1.1"
  sha256 "5d983097e1e62bdd99f1b5a32aad22949e009e2368524745253858ee8ffadb5a"

  url "https://github.com/xirtus/doumi/releases/download/v#{version}/Doumi-#{version}.dmg"
  name "Doumi"
  desc "Open-source file automation assistant for macOS — a free alternative to Hazel"
  homepage "https://github.com/xirtus/doumi"

  depends_on macos: ">= :sonoma"

  app "Doumi.app"

  zap trash: [
    "~/Library/Application Support/Doumi",
    "~/Library/Caches/Doumi",
    "~/Library/Preferences/com.xirtus.doumi.plist",
    "~/.config/doumi",
  ]
end
