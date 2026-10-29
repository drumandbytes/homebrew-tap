cask "dnb-cal" do
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/drumandbytes/dnb-cal/releases/download/v#{version}/DnbCal-#{version}.zip"
  name "DnbCal"
  desc "Writes Apple Calendar events to a file, for scripts that can't ask for access"
  homepage "https://github.com/drumandbytes/dnb-cal"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "DnbCal.app"
end
