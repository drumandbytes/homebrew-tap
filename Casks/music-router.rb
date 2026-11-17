cask "music-router" do
  version "1.1.1"
  sha256 "f0c442f2910ad1e97398237af7a62da3520819908f5ca9a8c91ed9801f146b07"

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
