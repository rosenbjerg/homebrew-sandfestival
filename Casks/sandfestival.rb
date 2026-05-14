cask "sandfestival" do
  version "0.4.0"
  sha256 "ca3fdbeb6f3d9926052ca2a7661affc032cd4622fa13db4b1fa083ecd95eb064"

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
