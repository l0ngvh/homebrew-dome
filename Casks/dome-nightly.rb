cask "dome-nightly" do
  arch arm: "aarch64-apple-darwin"

  version "nightly"
  sha256 arm:   "cb7d35e1bca9e87dddd6893bcc11dbee60ed7d575dd4d59a38c22454acd245cf"

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
