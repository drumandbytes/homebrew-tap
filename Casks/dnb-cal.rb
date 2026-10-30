cask "dnb-cal" do
  version "1.0.1"
  sha256 "8e5f9031d402e93c60d076297d4af6bb42d653d7d95737da3ebfb561d180e618"

  url "https://github.com/drumandbytes/dnb-cal/releases/download/v#{version}/DnbCal-#{version}.zip"
  name "DnbCal"
  desc "Writes Apple Calendar events to a file, for scripts that can't ask for access"
  homepage "https://github.com/drumandbytes/dnb-cal"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "DnbCal.app"
end
