cask "music-router" do
  version "0.5.0"
  sha256 "891deeb3b1409f64ba13df0f18464881d3b6efb7ce2a754292d3f4ade6d18e14"

  url "https://github.com/drumandbytes/music-router/releases/download/v#{version}/MusicRouter-#{version}.zip"
  name "Music Router"
  desc "Stops Music.app auto-launch and routes media keys elsewhere"
  homepage "https://github.com/drumandbytes/music-router"

  depends_on arch: :arm64
  depends_on formula: "media-control"
  depends_on macos: :ventura

  app "MusicRouter.app"

  zap trash: "~/Library/Preferences/dev.drumandbytes.musicrouter.plist"
end
