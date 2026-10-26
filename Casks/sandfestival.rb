cask "sandfestival" do
  version "0.15.0"
  sha256 "7d4e16399982971521f14cb46ec38bc39e886d5c87ab698db0ee26e4ee7bb32f"

  url "https://github.com/rosenbjerg/SandFestival/releases/download/v#{version}/SandFestival-#{version}.dmg"
  name "Sand Festival"
  desc "Dashboard for long-running Claude Code sessions"
  homepage "https://github.com/rosenbjerg/SandFestival"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "SandFestival.app"

  zap trash: [
    "~/Library/Application Support/SandFestival",
    "~/Library/Preferences/com.rosenbjerg.SandFestival.plist",
    "~/Library/Caches/com.rosenbjerg.SandFestival",
    "~/Library/HTTPStorages/com.rosenbjerg.SandFestival",
    "~/Library/Saved Application State/com.rosenbjerg.SandFestival.savedState",
  ]
end
