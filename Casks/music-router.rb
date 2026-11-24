cask "music-router" do
  version "1.1.4"
  sha256 "4edfc7a7cde949b681cec679be07618203cd62578e3bdb0022b45de75ea2b5d2"

  url "https://github.com/drumandbytes/music-router/releases/download/v#{version}/MusicRouter-#{version}.zip"
  name "Music Router"
  desc "Stops Music.app auto-launch and routes media keys elsewhere"
  homepage "https://github.com/drumandbytes/music-router"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MusicRouter.app"
  binary "#{appdir}/MusicRouter.app/Contents/Resources/musicrouter-media"

  zap trash: "~/Library/Preferences/dev.drumandbytes.musicrouter.plist"
end
