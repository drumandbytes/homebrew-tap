cask "omniroute" do
  arch arm: "-arm64"

  version "3.8.52"
  sha256 arm:   "d56ca0fc0422fefaf85313d0ec1c14d79412a5480d93debe56468bb2947fd81b",
         intel: "354f12c1f268bd9f309acbe1d49ebf5929be19e060e74b975d36304d8699dd5c"

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
