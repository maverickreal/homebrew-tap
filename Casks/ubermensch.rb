cask "ubermensch" do
  version "1.0.3"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  url "https://github.com/maverickreal/UberMensch/releases/download/v#{version}/UberMensch_#{version}_aarch64.dmg"
  name "UberMensch"
  desc "Protocol-agnostic focus engine and ambient audio companion"
  homepage "https://github.com/maverickreal/UberMensch"

  # Apple Silicon target
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "UberMensch.app"

  zap trash: [
    "~/Library/Application Support/com.maverickreal.ubermensch",
    "~/Library/Preferences/com.maverickreal.ubermensch.plist",
    "~/Library/Saved Application State/com.maverickreal.ubermensch.savedState",
  ]
end
