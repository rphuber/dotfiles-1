function fish_prompt

  if not set -q -g __fish_robbyrussell_functions_defined
    set -g __fish_robbyrussell_functions_defined
    function _git_branch_name
      echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
    end

    function _is_git_dirty
      echo (git status -s --ignore-submodules=dirty ^/dev/null)
    end
  end

  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l normal (set_color normal)

  set -l xxx "$red✗✗✗"
  set -l cwd $cyan(basename (prompt_pwd))

  if [ (_git_branch_name) ]
    set -l git_branch $red(_git_branch_name)
    set git_info "$bluegit$blue:($git_branch$blue)"

    if [ (_is_git_dirty) ]
      set -l dirty "$yellow ✗"
      set git_info "$git_info$dirty"
    end
  end

  echo -n -s $xxx ' '$cwd $git_info $normal ' '
end

alias be "bundle exec"
alias git "hub"
alias gohome "cd $HOME/go/src/github.com/dickeyxxx"

set -x GOPATH $HOME/go

. (rbenv init -|psub)
set PATH ./bin $HOME/bin $GOPATH/bin /usr/local/bin $HOME/.rbenv/bin $PATH
set PATH /usr/local/lib/node_modules/karma/bin $PATH
eval (direnv hook fish)
