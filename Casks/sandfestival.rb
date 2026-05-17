cask "sandfestival" do
  version "0.5.0"
  sha256 "56ea59e67da44396feb91862eca68b3acf4df3c995e3890d5004fa1b25dc7211"

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
