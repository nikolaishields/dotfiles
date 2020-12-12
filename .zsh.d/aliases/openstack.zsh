# Openstack
alias os='openstack'
alias ossh='os server ssh --login root -o StrictHostKeyChecking=no $(os server list -f value --long -c Name | fzf)'
alias osd='os server show --diagnostics $(os server list -f value --long -c Name | fzf)'
alias osp='os server pause $(os server list -f value --long -c Name | fzf)'
alias osup='os server unpause $(os server list -f value --long -c Name | fzf)'
alias osstop='os server stop $(os server list -f value --long -c Name | fzf)'
alias osstart='os server start $(os server list -f value --long -c Name | fzf)'
alias osreboot='os server reboot $(os server list -f value --long -c Name | fzf)'


