cask "music-router" do
  version "0.6.0"
  sha256 "57fe36bc150576ac428e6fc2d4ae03d5b5fdd6dc446329b3f5905f2aca8d8c26"

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
