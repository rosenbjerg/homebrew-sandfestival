cask "sandfestival" do
  version "0.7.0"
  sha256 "6465f18261f06afc9c1d2694b1ae1ec0d64843b7a2ec70ef5eda9395d6a95ab9"

  url "https://github.com/rosenbjerg/SandFestival/releases/download/v#{version}/SandFestival-#{version}.dmg",
      verified: "github.com/rosenbjerg/SandFestival/"
  name "Sand Festival"
  desc "Dashboard for long-running Claude Code sessions"
  homepage "https://github.com/rosenbjerg/SandFestival"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "SandFestival.app"

  zap trash: [
    "~/Library/Application Support/SandFestival",
    "~/Library/Preferences/com.rosenbjerg.SandFestival.plist",
    "~/Library/Caches/com.rosenbjerg.SandFestival",
    "~/Library/HTTPStorages/com.rosenbjerg.SandFestival",
    "~/Library/Saved Application State/com.rosenbjerg.SandFestival.savedState",
  ]
end
