set "PATH=%GIT_INSTALL_ROOT%\usr\bin;%PATH%"
call "%GIT_INSTALL_ROOT%/cmd/start-ssh-agent.cmd"
ssh-add "C:\Users\bekir\.ssh\id_rsa"
