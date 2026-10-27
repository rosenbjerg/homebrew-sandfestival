cask "sandfestival" do
  version "0.16.0"
  sha256 "c1997860c4e5d8bb08aa9aea92e623b463f14f0312c3517dcb56a517518b0a77"

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
