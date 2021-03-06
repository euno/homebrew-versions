cask 'openemu-experimental' do
  version '2.0.1'
  sha256 'ccaa4027bfe80a9ecc819018b9b96439d3ddbccc37f1c6a00132cf839a93a663'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}-experimental.zip"
  appcast 'https://raw.githubusercontent.com/OpenEmu/OpenEmu-Update/master/appcast-experimental.xml',
          :sha256 => '4137532e5fdf432bbbbb1044a1de071c35f7a56c60cbe0c71bb1773a8f356f2b'
  name 'OpenEmu'
  homepage 'http://openemu.org/'
  license :oss

  depends_on :macos => '>= :el_capitan'

  app 'OpenEmu.app'

  zap :delete => [
                  '~/Library/Application Support/OpenEmu',
                  '~/Library/Application Support/org.openemu.OEXPCCAgent.Agents',
                  '~/Library/Caches/org.openemu.OpenEmu',
                  '~/Library/Preferences/org.openemu.Atari800.plist',
                  '~/Library/Preferences/org.openemu.Bliss.plist',
                  '~/Library/Preferences/org.openemu.CrabEmu.plist',
                  '~/Library/Preferences/org.openemu.desmume.plist',
                  '~/Library/Preferences/org.openemu.FCEU.plist',
                  '~/Library/Preferences/org.openemu.Gambatte.plist',
                  '~/Library/Preferences/org.openemu.GenesisPlus.plist',
                  '~/Library/Preferences/org.openemu.Higan.plist',
                  '~/Library/Preferences/org.openemu.Mednafen.plist',
                  '~/Library/Preferences/org.openemu.Mupen64Plus.plist',
                  '~/Library/Preferences/org.openemu.NeoPop.plist',
                  '~/Library/Preferences/org.openemu.Nestopia.plist',
                  '~/Library/Preferences/org.openemu.O2EM.plist',
                  '~/Library/Preferences/org.openemu.OpenEmu.plist',
                  '~/Library/Preferences/org.openemu.Picodrive.plist',
                  '~/Library/Preferences/org.openemu.PPSSPP.plist',
                  '~/Library/Preferences/org.openemu.ProSystem.plist',
                  '~/Library/Preferences/org.openemu.SNES9x.plist',
                  '~/Library/Preferences/org.openemu.Stella.plist',
                  '~/Library/Preferences/org.openemu.TwoMbit.plist',
                  '~/Library/Preferences/org.openemu.VecXGL.plist',
                  '~/Library/Preferences/org.openemu.VisualBoyAdvance.plist',
                  '~/Library/Saved Application State/org.openemu.OpenEmu.savedState'
                 ]
end
