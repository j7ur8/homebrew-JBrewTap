cask "gotohttp" do
  version :latest
  sha256 "88bcb9658730522dcbeaec5652576a8c050387b2e678ebd63dc2a927bec5faaf"

  url "https://gotohttp.com/gotohttp.dmg"
  name "GoToHTTP"
  desc "Remote access and control software"
  homepage "https://gotohttp.com/"

  pkg "Install.pkg"

  uninstall pkgutil: "com.pingbo.gotohttp.Install"

  livecheck do
    skip "The vendor provides an unversioned DMG with no stable version metadata."
  end
end
