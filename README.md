# Web Worker Example

These don't work, presumably because they use the dev compiler:

```
pub run build_runner serve
```

or

```
pub run build_runner serve --no-release
```

This works because it uses dart2js:

```
pub run build_runner serve --release
```

