cask "music-router" do
  version "0.1.0"
  sha256 "92890919639ebefab31027e4478d2df6acac7851d1f3de0df77d48c7e5614059"

  url "https://github.com/drumandbytes/music-router/releases/download/v#{version}/MusicRouter-#{version}.zip"
  name "Music Router"
  desc "Stops Music.app auto-launch and routes media keys elsewhere"
  homepage "https://github.com/drumandbytes/music-router"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MusicRouter.app"

  zap trash: "~/Library/Preferences/dev.drumandbytes.musicrouter.plist"
end
