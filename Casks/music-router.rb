cask "music-router" do
  version "0.4.1"
  sha256 "d4df61c2ed7bdf46eed3dc524ccb316aa17b1c5e554af0d0f991e82fba665ea3"

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
