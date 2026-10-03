cask "dome-nightly" do
  arch arm: "aarch64-apple-darwin"

  version "2026.10.03.0c8feab"
  sha256 arm:   "780a8235037e4e21b71f3f2432f4707c2f62df1e62e3f229368a66c140c60652"

  url "https://github.com/l0ngvh/dome/releases/download/nightly-#{version}/dome-nightly-#{version}-#{arch}.dmg"
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
