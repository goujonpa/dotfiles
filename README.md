# dotfiles
Personal dotfiles backup

## Method

``` bash
    # initialised a git repo
    $ git init

    # git ignore all
    $ echo "*" > .gitignore

    # force adding ONLY safe files
    # i.e. don't add your .ssh folder for example
    $ git add --force <.my-dotfile>

    # usual stuff...
    $ git commit
    $ git push

```

## Tip

If you want to store several different configurations, for example if you develop on several different devices, use a different git branch for each configuration
