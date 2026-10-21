cask "music-router" do
  version "0.4.4"
  sha256 "5e45384d7d6d1ba6690b8c5bc92697a91857277f27e5c1670a52eeae73f38744"

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
