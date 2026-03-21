cask "dirsearch" do
  version "0.4.4"

  if Hardware::CPU.arm?
    url "https://github.com/maurosoria/dirsearch/releases/download/v0.4.4/dirsearch-nuitka-macos-silicon-threaded"
    sha256 "587240b64e4de2cb2d2c1387dca98dd2713a3d64141828ff576c827b6d75ff98"
    binary "dirsearch-nuitka-macos-silicon-threaded", target: "dirsearch"
  else
    url "https://github.com/maurosoria/dirsearch/releases/download/v0.4.4/dirsearch-nuitka-macos-intel-threaded"
    sha256 "50a2827db413cab8dd3494cab367e158496e9ee7568ca0a4f6e31c588ed8ca2c"
    binary "dirsearch-nuitka-macos-intel-threaded", target: "dirsearch"
  end

  name "dirsearch"
  desc "Web path scanner"
  homepage "https://github.com/maurosoria/dirsearch"

  caveats do
    <<~EOS
      dirsearch is a standalone macOS binary build.
      This cask currently prefers the threaded release when both threaded and async builds exist.

      Example:
        dirsearch -u https://target.example -e php,html,js
    EOS
  end

  livecheck do
    skip "BrewTap Studio resolves the newest GitHub release that actually contains macOS standalone binaries."
  end
end
