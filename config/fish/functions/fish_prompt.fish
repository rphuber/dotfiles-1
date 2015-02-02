function fish_prompt
  set -l cyan (set_color cyan)
  set -l red (set_color red)
  set -l orange (set_color ff7f00)
  set -l normal (set_color normal)

  set -l cwd $cyan(prompt_pwd)

  set -l git_info (_git_info)

  if type rbenv > /dev/null
    set ruby_version " "(rbenv version-name)
    if [ $ruby_version = " 2.2.0" ]
      set ruby_version ""
    end
  end

  echo -s "$orange☸$red$ruby_version $cwd$git_info $normal"
end

function fish_right_prompt
  set -l last_status $status
  if [ $last_status -ne 0 ]
    echo -s (set_color red) "#" $last_status (set_color normal)
  end
end

function _git_info
  set -l red (set_color red)
  set -l blue (set_color blue)
  set -l yellow (set_color yellow)
  set -l green (set_color green)
  set -l git_branch (_git_branch_name)
  if [ (_git_branch_name) ]
    if [ (_is_git_dirty) ]
      set git_dirty $red!
    end
    set -l git_ahead_count (_git_ahead_count $git_branch)
    if [ $git_ahead_count != 0 ]
      set ahead_count " $green+$git_ahead_count"
    end

    echo ":($yellow$git_branch$git_dirty$ahead_count$blue)"
  end
end

function _is_git_dirty
  echo (git status -s --ignore-submodules=dirty ^/dev/null)
end

function _git_branch_name
  echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _git_ahead_count -a branch_name
  echo (command git log origin/$branch_name..HEAD ^/dev/null | grep '^commit' | wc -l | tr -d ' ')
end
