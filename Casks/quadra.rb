cask "quadra" do
  version "0.1.0"
  sha256 "7f4ea1aac082e8efe93adae733af677bb840f03da2487ac61851222ba678b26e"

  url "https://github.com/pardel/quadra/releases/download/v#{version}/Quadra-#{version}.zip"
  name "Quadra"
  desc "Tiling window manager in the Hyprland mould, driven from one modifier key"
  homepage "https://github.com/pardel/quadra"

  depends_on macos: :sonoma

  app "Quadra.app"
  binary "#{appdir}/Quadra.app/Contents/Helpers/quadra"

  uninstall quit:       "dev.pardel.quadra",
            login_item: "Quadra"

  zap trash: [
    "~/.config/quadra",
    "~/Library/Application Support/Quadra",
    "~/Library/Logs/Quadra",
    "~/Library/Preferences/dev.pardel.quadra.plist",
  ]
end
