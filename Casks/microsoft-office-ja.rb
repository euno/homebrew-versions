cask 'microsoft-office-ja' do
  version :latest
  sha256 :no_check

  url 'http://officecdn.microsoft.com/pr/MacOffice2011/ja-JP/MicrosoftOffice2011.dmg'
  name 'Microsoft Office for Japanese'
  homepage 'http://www.microsoft.com/mac'
  license :commercial

  pkg 'Office インストーラー.pkg'

  uninstall :pkgutil   => 'com.microsoft.office.*',
            :launchctl => 'com.microsoft.office.licensing.helper'
  zap       :pkgutil   => [
                           'com.microsoft.mau.all.autoupdate.*',
                           'com.microsoft.merp.all.errorreporting.*'
                          ],
            :delete    => [
                           '/Library/LaunchDaemons/com.microsoft.office.licensing.helper.plist',
                           '/Library/PrivilegedHelperTools/com.microsoft.office.licensing.helper',
                           '/Library/Application Support/Microsoft/MAU2.0',
                           '/Library/Application Support/Microsoft/MERP2.0',
                           '/Library/Preferences/com.microsoft.Excel.plist',
                           '/Library/Preferences/com.microsoft.Outlook.plist',
                           '/Library/Preferences/com.microsoft.PlayReady.plist',
                           '/Library/Preferences/com.microsoft.Powerpoint.plist',
                           '/Library/Preferences/com.microsoft.Word.plist',
                           '/Library/Preferences/com.microsoft.office.licensing.plist',
                           '/Library/Preferences/com.microsoft.outlook.databasedaemon.plist',
                           '/Library/Preferences/com.microsoft.outlook.officereminders.plist',
                           '~/Library/Application Support/Microsoft/Office',
                           '~/Library/Preferences/com.microsoft.Excel.plist',
                           '~/Library/Preferences/com.microsoft.Outlook.plist',
                           '~/Library/Preferences/com.microsoft.Powerpoint.plist',
                           '~/Library/Preferences/com.microsoft.Word.plist',
                           '~/Library/Preferences/com.microsoft.autoupdate2.plist',
                           '~/Library/Preferences/com.microsoft.error_reporting.plist',
                           '~/Library/Preferences/com.microsoft.office.plist',
                           '~/Library/Preferences/com.microsoft.office.setupassistant.plist',
                           '~/Library/Preferences/com.microsoft.outlook.databasedaemon.plist',
                           '~/Library/Preferences/com.microsoft.outlook.office_reminders.plist',
                           '~/Library/Preferences/com.microsoft.outlook.officereminders.plist',
                           '~/Documents/Microsoft ユーザー データ/Microsoft',
                           '~/Documents/Microsoft ユーザー データ/Office 2011 Identities',
                           '~/Documents/Microsoft ユーザー データ/Outlook Sound Sets',
                           '~/Documents/Microsoft ユーザー データ/Saved Attachments'
                          ],
            :rmdir     => [
                           '/Library/Application Support/Microsoft',
                           '~/Library/Application Support/Microsoft',
                           '~/Documents/Microsoft ユーザー データ'
                          ]
end
