cask "ubermensch" do
  version "1.0.6"
  sha256 "3fa0a1988df8f5f334bf21b7e6a985d8afb62e30c814b94d1fd656b3e154782e"

  url "https://github.com/maverickreal/UberMensch/releases/download/v#{version}/UberMensch_#{version}_aarch64.dmg"
  name "UberMensch"
  desc "Protocol-agnostic focus engine and ambient audio companion"
  homepage "https://github.com/maverickreal/UberMensch"

  # Apple Silicon target
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "UberMensch.app"

  zap trash: [
    "~/Library/Application Support/com.maverickreal.ubermensch",
    "~/Library/Preferences/com.maverickreal.ubermensch.plist",
    "~/Library/Saved Application State/com.maverickreal.ubermensch.savedState",
  ]
end
