(Für LazyCommit gulp scss watcher)

In /css Ordner = nur css Dateien

In /scss Ordner = nur (z.B main.scss) Dateien

In /scss/partials = nur (z.B \_partial.scss)

```
css
 main.css
 scss
   main.scss
   partials
     _example.scss
```

############################################

Alternativ geht auch css/scss
ohne partials Ordner (die partials sind dann im scss ordner)
und die main scss datei liegt im css ordner
unschön .. aber supported f. standart scss watcher

```
css
 main.scss
 scss
  _example.scss
```
