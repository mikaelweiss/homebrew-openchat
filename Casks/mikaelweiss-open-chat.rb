cask "mikaelweiss-open-chat" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.3"
  sha256 arm:   "f5ddcf1f20cb7379762e996777f8971642362ac346c844d7b15b91b8977fd959",
         intel: "b0c1d06cae289530903bba9e0d7d18d3dd83ec68036768bc217aad9f856b1625"

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
