# Recorded with the doitlive recorder
#doitlive shell: /bin/zsh
#doitlive prompt: sorin

cd ~

time find ~ -iregex '.*[0-9]\.jpg$' > ~/tmp/find1.out && wc -l ~/tmp/find1.out

time find ~ -iname '*[0-9].jpg' > ~/tmp/find2.out && wc -l ~/tmp/find2.out

time fd -HI '.*[0-9]\.jpg$' ~ > ~/tmp/fd.out && wc -l ~/tmp/fd.out

time fd '.*[0-9]\.jpg$' ~ > ~/tmp/fd_ignore.out && wc -l ~/tmp/fd_ignore.out

fd '.*[0-9]\.jpg$' ~ | fzf

