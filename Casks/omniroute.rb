cask "omniroute" do
  arch arm: "-arm64"

  version "3.8.51"
  sha256 arm:   "b539afe6359e6fcb772cd3b735e4671ac2818524a7a525251bc8eb64d043c4a9",
         intel: "15484ce1f055f9faede5d53994db718ed0ed7712ac9d84c5e3c55df5e580fe36"

  url "https://github.com/diegosouzapw/OmniRoute/releases/download/v#{version}/OmniRoute-#{version}#{arch}.dmg"
  name "OmniRoute"
  desc "Unified AI gateway and model router"
  homepage "https://omniroute.online/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "OmniRoute.app"

  # Upstream signature is broken ("damaged, move to Trash", no bypass).
  # Ad-hoc re-sign after the sha256 check; the usual first-launch prompt stays.
  postflight_steps do
    run "/usr/bin/codesign",
        args: ["--remove-signature", "{{appdir}}/OmniRoute.app"]
    run "/usr/bin/codesign",
        args: ["--force", "--deep", "--sign", "-", "{{appdir}}/OmniRoute.app"]
  end

  zap trash: [
    "~/Library/Application Support/OmniRoute",
    "~/Library/Preferences/online.omniroute.plist",
    "~/Library/Saved Application State/online.omniroute.savedState",
  ]
end
