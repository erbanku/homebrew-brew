# frozen_string_literal: true

cask "account-switcher" do
  version "1.2.0"
  sha256 "b3ae426284df83fd8e91dde0676fab81df6f9d16b14d3b0afb9b4c686b440048"
  
  url "https://github.com/Bigwig-Club/Account-Switcher/releases/download/v#{version}/Account_Switcher.zip"
  # appcast "https://github.com/Bigwig-Club/Account-Switcher/releases.atom"
  name "Account Switcher"
  homepage "https://github.com/Bigwig-Club/Account-Switcher"
  depends_on macos: :big_sur

  app "Account Switcher.app"
  
  livecheck do
    url :url
    strategy :github_latest
  end

  zap trash: [
    "~/Library/Preferences/com.licardo.Account-Switcher.plist",
    "~/Library/Caches/com.licardo.Account-Switcher",
    "~/Library/Containers/com.licardo.Account-Switcher",
    "~/Library/Saved Application State/com.licardo.Account-Switcher.savedState"
  ]
end
