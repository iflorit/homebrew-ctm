cask "call-to-meet-notch" do
  version "1.41.4"
  sha256 "aaee9cb1146155f8c122f7fc0f7f94b6ddd2252bc80d83ce8bb423fb1accd049"

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
