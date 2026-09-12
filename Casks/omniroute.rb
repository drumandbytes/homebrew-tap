cask "omniroute" do
  arch arm: "-arm64"

  version "3.8.50"
  sha256 arm:   "2babe5e5cd983ea290fa816189cf7ca49fad230c59f6f790b99683e454305d4b",
         intel: "db4897bf300bda63dc8613097bd0fdb69e38dc925751bf18c951e1190eb4f02f"

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

  # Upstream ships the app with a broken code signature (resource seal
  # doesn't match what the signature claims) — Gatekeeper reports it as
  # "damaged, move to Trash" with no bypass. Re-sign it locally so it opens;
  # harmless since this runs after the pinned sha256 already verified the
  # download. This doesn't touch quarantine (Homebrew reasserts that itself
  # after postflight regardless) — you'll still get the normal one-time
  # "unidentified developer" Gatekeeper prompt on first launch, same as any
  # other non-Developer-ID-signed app; that one has a right-click-Open bypass.
  postflight do
    system_command "/usr/bin/codesign",
                   args: ["--remove-signature", "#{appdir}/OmniRoute.app"]
    system_command "/usr/bin/codesign",
                   args: ["--force", "--deep", "--sign", "-", "#{appdir}/OmniRoute.app"]
  end

  zap trash: [
    "~/Library/Application Support/OmniRoute",
    "~/Library/Preferences/online.omniroute.plist",
    "~/Library/Saved Application State/online.omniroute.savedState",
  ]
end
