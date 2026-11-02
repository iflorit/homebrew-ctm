cask "call-to-meet-notch" do
  version "1.41.5"
  sha256 "f8908c3b2e0984c65080fd5c7ee50b0bb0ab3c654da151749dbf117ce006b14c"

  url "https://ctm-mac.web.app/CallToMeetNotch.zip"
  name "Call to Meet Notch"
  desc "Next call countdown in the notch, paired with Call to Meet for iPhone"
  homepage "https://ctm-mac.web.app/"

  livecheck do
    url "https://ctm-mac.web.app/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Call to Meet Notch.app"

  zap trash: "~/Library/Preferences/es.florit.apple.Call-to-Meet.app.plist"
end
