cask "mikaelweiss-open-chat" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "ceb626618ea023423dee2b84bc2cbaada48c2d31377d984e4c7c18ea20875bdf",
         intel: "fc36d76d0ae0260edafd94a03befa4298867400d4cf6e3c23ca541b29a584d8f"

  url "https://github.com/MikaelWeiss/openchat/releases/download/v#{version}/Open.Chat_#{version}_#{arch}.dmg"
  name "Open Chat"
  desc "Cross-platform AI chat client for multiple providers"
  homepage "https://github.com/MikaelWeiss/openchat"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Open Chat.app"

  zap trash: [
    "~/Library/Application Support/org.weisssolutions.openchat",
    "~/Library/Caches/org.weisssolutions.openchat",
    "~/Library/Preferences/org.weisssolutions.openchat.plist",
    "~/Library/WebKit/org.weisssolutions.openchat",
  ]
end
