cask "airplay-screen" do
  version "1.0.0"
  sha256 "2dc378c0a13d5db715dad626b3d0f8f65f09401964821630e8742cf66e7151e3"

  url "https://github.com/drumandbytes/airplay-screen/releases/download/v#{version}/AirplayScreen-#{version}.zip"
  name "AirplayScreen"
  desc "Start and stop AirPlay screen mirroring from the command-line"
  homepage "https://github.com/drumandbytes/airplay-screen"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "AirplayScreen.app"
  binary "#{appdir}/AirplayScreen.app/Contents/MacOS/airplay-screen"
end
