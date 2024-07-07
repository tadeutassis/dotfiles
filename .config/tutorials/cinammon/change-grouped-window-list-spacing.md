we need to change `.grouped-window-list-item-box` attributes on `cinnamon.css`

# steps

copy theme folder to a user directory and change name

`$ cp -r /usr/share/themes/{theme-name} $HOME/.themes/{new-name}`

make backup of `cinnamon.css` file

```
$ cd $HOME/.themes/{new-name}/cinnamon/
$ cp cinnamon.css cinnamon.css.bak
```

change `padding` and `margin` attributes in `.grouped-window-list-item-box`
