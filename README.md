# dotfile
all dotfile

# usage
> git clone https://github.com/muziqiushan/dotfile.git 
> cd dotfile && tar xzvf .vim.tgz && ls -I *.md |xargs -i ln -fs $PWD/{} ~/.{}

# includes:
+ vim:
  - .vimrc
  - .vim.tgz (a tar file of .vim dir; )
+ bash:
  - .bashrc
+ git:
  - .gitconfig
