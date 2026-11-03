cask "ubermensch" do
  version "1.0.8"
  sha256 "472f7a19181b8d370a75767d33f0ae3e0fcaf5620e2ef87687c49534b5f81afd"

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
