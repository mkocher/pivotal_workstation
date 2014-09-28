##  This is very experimental and unsupported.  Don't expect it to work,
##  though it seems to work OK.

run_unless_marker_file_exists("thunderbird") do
  execute "download to temp dir" do
    command "curl -o /tmp/thunderbird.dmg http://mozilla.cdn.leaseweb.com/thunderbird/releases/3.1.7/mac/en-US/Thunderbird%203.1.7.dmg"
    user WS_USER
  end

  execute "mount thunderbird dmg" do
    command "hdid /tmp/thunderbird.dmg"
    user WS_USER
  end
  execute "copy thunderbird to /Applications" do
    command 'cp -rf /Volumes/Thunderbird/Thunderbird.app /Applications/'
    user WS_USER
  end

  execute "unmount dmg" do
    command "hdiutil detach  /Volumes/Thunderbird/"
    user WS_USER
  end
end
