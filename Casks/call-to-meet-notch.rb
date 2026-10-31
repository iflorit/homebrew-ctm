cask "call-to-meet-notch" do
  version "1.41.3"
  sha256 "83713080e60c1b2c896399c5c42f624964f35d03fcf8eef8b86dfc57524267ff"

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
