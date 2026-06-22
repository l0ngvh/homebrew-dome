cask "dome" do
  arch arm: "aarch64-apple-darwin"

  version "nightly"
  sha256 arm:   "3cf38aaef4afcdf2d12eedf4e938d6d79c536e1456d29d5f758c161718133ea2",

  url "https://github.com/l0ngvh/dome/releases/download/v#{version}/dome-#{version}-#{arch}.dmg"
  name "Dome"
  desc "Cross-platform tiling window manager"
  homepage "https://github.com/l0ngvh/dome"

  app "Dome.app"
  binary "#{appdir}/Dome.app/Contents/MacOS/dome"

  caveats <<~EOS
    Dome requires Accessibility permissions. After first launch, grant access
    in System Settings → Privacy & Security → Accessibility.
  EOS
end
