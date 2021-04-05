# imgterest.sh

Generate a pinterest-style page for offline viewing from a folder of images.

```
    ./imgterest.sh <directory>
```

This is intended to be used in conjunction with a pinterest downloader.
Typically these output downloads to ``images/username/board``.

To generate a page ``index.html`` to view the images offline, run:
```
    ./imgterest.sh ``images/username/board``
```


## Quickstart / Install

To install locally to the user directory ``~/bin/imgterest.sh``, run:
```
$ make local
```

Alternatively configure the Makefile for an alternative install directory.

Also, ensure install location is on the $PATH environment variable.

Once installed, view the quick help with:
```
$ imgterest.sh --help
```

### Requirements

- bash

## Authors

* **BreadMakesYouFat** - [website](www.github.com/BreadMakesYouFat)

## License

See [LICENSE.md](LICENSE.md)


