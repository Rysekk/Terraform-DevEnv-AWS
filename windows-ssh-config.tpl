add-content -path c:/users/mathieu/.ssh/config -value @'

Host ${hostname}
    HostName ${hostname}
    User ${user}
    IdentityFile ${identityfile}
'@