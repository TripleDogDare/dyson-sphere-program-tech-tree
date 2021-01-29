Dyson Sphere Program Tech Tree Generation
---
The purpose of this repository is to be able to generate tech tree graphs for Dyson Sphere Program (DSP).

Eventually I'd like to being able to generate tech tree images with production pipelines.


## Usage

### Building graphs
Depends on `graphviz` and `m4` to generate images.
Execute [./build.sh](./build.sh) to convert all `.m4` files in [./src](./src) into images. The default format is `png`.

### Development
I'm using `reflex` and `feh` to automatically rebuild and preview images.
1. Install [reflex](https://github.com/cespare/reflex). You will need [golang](https://golang.org/).
2. Execute [./reflex.sh](./reflex.sh) to start the reloading pipeline.
3. Edit a file in [./src](./src)
4. Once an output is created you can initiate previews by opening `feh` or running [./preview.sh](./preview.sh) which will do that for you.
	- NOTE: The pipeline will send a signal to all `feh` processes so YMMV if you are using it for something else concurrently.

## Useful Links
- [DSP Wiki for Items](https://dsp-wiki.com/Items)
- [dot lang](https://graphviz.org/doc/info/lang.html)
- [dot guide](https://graphviz.org/pdf/dotguide.pdf)
- [reflex](https://github.com/cespare/reflex)
- [m4 comprehensive guide](https://www.gnu.org/savannah-checkouts/gnu/m4/manual/m4-1.4.18/m4.html)
- [m4 basics by example](https://mbreen.com/m4.html)

