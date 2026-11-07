cask "call-to-meet-notch" do
  version "1.45.0"
  sha256 "5c52a9b0167e6296e93ee05a917456c35666b9a3058ee7d1d849255a9af1ab37"

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
