# Written by redcrab's scripts/homebrew.sh for each release; edit it there.
class RedcrabTui < Formula
  desc "Fast Redis and Valkey client for the terminal"
  homepage "https://github.com/muratmirgun/redcrab"
  license any_of: ["MIT", "Apache-2.0"]

  # One universal binary; Homebrew takes a url only per architecture.
  on_macos do
    on_arm do
      url "https://github.com/muratmirgun/redcrab/releases/download/v0.4.2/redcrab-tui-0.4.2-macos-universal.tar.gz"
      sha256 "5cb029acdb2cd751b8752c6af54603971917d00723cac4498a3cc510d90a7623"
    end
    on_intel do
      url "https://github.com/muratmirgun/redcrab/releases/download/v0.4.2/redcrab-tui-0.4.2-macos-universal.tar.gz"
      sha256 "5cb029acdb2cd751b8752c6af54603971917d00723cac4498a3cc510d90a7623"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/muratmirgun/redcrab/releases/download/v0.4.2/redcrab-tui-0.4.2-linux-aarch64.tar.gz"
      sha256 "8ec91af29e735a0f235c3a85ec4a5ada0ebd39300dc06b6fedab4e575401940a"
    end
    on_intel do
      url "https://github.com/muratmirgun/redcrab/releases/download/v0.4.2/redcrab-tui-0.4.2-linux-x86_64.tar.gz"
      sha256 "a2973605ad42ed5ed08f59eb11b3a2c6f41e4b29c9bd53296334c864b6da0407"
    end
  end

  def install
    bin.install "redcrab-tui"
  end

  test do
    assert_equal "redcrab-tui #{version}", shell_output("#{bin}/redcrab-tui --version").strip
  end
end
