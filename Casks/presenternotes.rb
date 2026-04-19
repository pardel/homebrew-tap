cask "presenternotes" do
  version "1.0.0"
  sha256 "f8493c1aec583df932fa09574f7e624636cc5026c159c44b39d9f2623f0dcf30"

  url "https://github.com/pardel/PresenterNotes/releases/download/v#{version}/PresenterNotes-#{version}.dmg"
  name "PresenterNotes"
  desc "A focused macOS app that displays your presenter notes one slide at a time, and advances as you speak."
  homepage "https://github.com/pardel/PresenterNotes"

  depends_on macos: ">= :ventura"

  app "PresenterNotes.app"

  zap trash: [
    "~/Library/Preferences/dev.pardel.PresenterNotes.plist",
    "~/Library/Caches/dev.pardel.PresenterNotes",
    "~/Library/Saved Application State/dev.pardel.PresenterNotes.savedState",
  ]
end
