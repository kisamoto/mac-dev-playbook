# Full Mac setup for `kisamoto`

## Initial configuration of a brand new Mac

Could do local install but prefer to run ansible from a different server and connect remotely.

- Standard setup wizard
- Enable xcode tools
  - `xcode-select --install`
- Install xcode from App Store
  - Accept license with `sudo xcodebuild -license accept`
- Enable remote access in `System Settings / Sharing` (uses user password) on new mac
- On host, clone out `github.com/kisamoto/mac-dev-playbook`
  - Tweak `inventory` with IP address and `ansible_user`
  - Use our custom configuration stored in `Onedrive / Settings / Mac / config.yml`. Download if necessary.
- Install ansible
  - `uv add ansible`
- Run the playbooks
  - `uv run ansible-playbook kisamoto.yml --ask-pass --ask-become-pass`
- Manually install some cask apps that need the `sudo` password
  - _See comments in `config.yml`_
  - Examples: `microsoft-teams`, `microsoft-edge`, `virtualbox`, `onedrive` etc.
- Start synchronisation tasks
  - Open Photos to sync from iCloud
  - Open OneDrive and sync everything
  - Setup Syncthing and add to the chain with the other nodes
  - Signin to Firefox sync
- Enable keyboard shortcuts for window management with Hammerspoon (already installed via brew)
  - 
- Setup Mail
  - Fastmail
  - Gmail
- Add volume to menu bar
  - System Settings / Control Center / Sound / Always Show in Menu Bar
- Add GPG key for signing git commits
  - https://alexnorell.com/post/set-up-gpg/#install-tools
  - Download private key for BitWarden
  - Generate a new signing key
    - `gpg --quick-add-key $PRIMARY ed25519 sign 1y`
  - Locate the ID
    - `gpg --list-keys --with-subkey-fingerprints $PRIMARY`
  - Update the global Git config
- Setup Calendar
  - TODO
- Signin to Jetbrains Toolbox
  - Download Jetbrains apps
- Manual settings changes
  - Start `KeepingYouAwake` at Login via settings
  - Signin to Tailscale
- Setup and enable TimeMachine back ups
- Disable remote access in `System Settings / Sharing` again
