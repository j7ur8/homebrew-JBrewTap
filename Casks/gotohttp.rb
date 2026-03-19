cask "gotohttp" do
  version :latest
  sha256 :no_check

  url "https://gotohttp.com/gotohttp.dmg"
  name "GoToHTTP"
  desc "Remote access and control software"
  homepage "https://gotohttp.com/"

  installer manual: "Install"
  uninstall manual: "Uninstall"

  livecheck do
    skip "The vendor provides an unversioned DMG with no stable version metadata."
  end
end
