##  This is very experimental and unsupported.  Don't expect it to work,
##  though it seems to work OK.

run_unless_marker_file_exists("iterm2") do
  execute "download to temp dir" do
    command "curl -o /tmp/iterm2.zip http://iterm2.googlecode.com/files/iTerm2-alpha14.zip"
    user WS_USER
  end

  execute "install iTerm2" do
    command "tar -xvf /tmp/iterm2.zip /Applications"
    user WS_USER
  end
end
