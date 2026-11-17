cask "music-router" do
  version "1.1.3"
  sha256 "b36f4d6754ea7c6a419f027f93d692a01d987a4b225899e3a9cabafc101aaad4"

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
