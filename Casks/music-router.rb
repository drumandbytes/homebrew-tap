cask "music-router" do
  version "1.0.0"
  sha256 "23f641718cf85037a79e69d7b818365e221ec37adc2a1fa7fa58f7cb41093b81"

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
