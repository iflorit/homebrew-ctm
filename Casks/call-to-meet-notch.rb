cask "call-to-meet-notch" do
  version "1.44.0"
  sha256 "13734ba195a32e0490ac8611ff900ea3190221107d9c8f50bb6518bd515edeec"

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
