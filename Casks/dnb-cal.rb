cask "dnb-cal" do
  version "1.0.0"
  sha256 "b2877a2e9f543c2cf5795394450076bd08a8529e17916b5db4117df617262b85"

  url "https://github.com/drumandbytes/dnb-cal/releases/download/v#{version}/DnbCal-#{version}.zip"
  name "DnbCal"
  desc "Writes Apple Calendar events to a file, for scripts that can't ask for access"
  homepage "https://github.com/drumandbytes/dnb-cal"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "DnbCal.app"
end
