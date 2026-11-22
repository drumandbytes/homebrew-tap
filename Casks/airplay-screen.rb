cask "airplay-screen" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/drumandbytes/airplay-screen/releases/download/v#{version}/AirplayScreen-#{version}.zip"
  name "AirplayScreen"
  desc "Start and stop AirPlay screen mirroring from the command-line"
  homepage "https://github.com/drumandbytes/airplay-screen"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "AirplayScreen.app"
  binary "#{appdir}/AirplayScreen.app/Contents/MacOS/airplay-screen"
end
