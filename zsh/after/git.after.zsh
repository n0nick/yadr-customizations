if [ `command -v brew` ]; then
  # Tell git to use new vim
  export GIT_EDITOR=$(brew ls macvim | grep Contents/MacOS/Vim)
fi
