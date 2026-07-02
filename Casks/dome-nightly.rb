cask "dome-nightly" do
  arch arm: "aarch64-apple-darwin"

  version "nightly"
  sha256 arm:   "b1720a9f80bc118efe8f4465680037ed79f1a031151e71078968eb218ecc72b8"

  url "https://github.com/l0ngvh/dome/releases/download/nightly/dome-nightly-#{arch}.dmg"
  name "Dome (Nightly)"
  desc "Cross-platform tiling window manager (nightly build)"
  homepage "https://github.com/l0ngvh/dome"

  postflight do
    system "xattr -d com.apple.quarantine #{appdir}/Dome.app"
    system "xattr -d com.apple.quarantine #{appdir}/Dome.app/Contents/MacOS/dome"
  end

  app "Dome.app"
  binary "#{appdir}/Dome.app/Contents/MacOS/dome"

  caveats <<~EOS
    Dome requires Accessibility permissions. After first launch, grant access
    in System Settings → Privacy & Security → Accessibility.
  EOS
end
