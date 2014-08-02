function gh
  set -l user $GITHUB
  set -l repo ""

  switch (count $argv)
  case 0
    cd $HOME/src/github.com/$user
    return
  case 1
    set repo $argv[1]
  case 2
    set user $argv[1]
    set repo $argv[2]
  case '*'
    echo "USAGE: g [user] [repo]"
    return 127
  end

  set -l path $HOME/src/github.com/$user/$repo
  if not test -d $path
    hub clone -p $user/$repo $path
  end

  cd $path
end

function __gh_user_completion
  ls $HOME/src/github.com/$GITHUB
end

function __gh_repo_completion
  set -l cmd (commandline -o)
  set -l user $cmd[2]
  ls $HOME/src/github.com/$user
end

complete -c gh -n '__fish_is_token_n 2' --arguments '(__gh_user_completion)' --no-files
complete -c gh -n '__fish_is_token_n 3' --arguments '(__gh_repo_completion)' --no-files
