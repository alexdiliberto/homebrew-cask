class JabberVideo < Cask
  version '4.8.6'
  sha256 '9f0436cdfe65ebd3955a33eefac72af03def89075acd28280e27b0a6dd12738a'

  url 'http://collaboration.iu.edu/service-request/software/JabberVideo-4.8.dmg'
  homepage 'https://www.ciscojabbervideo.com/'
  license :unknown

  app 'Jabber Video.app'

  # todo what is the reason for this?
  postflight do
    system '/bin/rm', '--', "#{destination_path}/Jabber Video.app/Contents/Resources/ForcedConfig.plist"
  end
end
