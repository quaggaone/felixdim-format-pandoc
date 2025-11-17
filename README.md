# felixdim format through pandoc

shell script to convert MD to PDF using pandoc and custom template

this repo contains the pandoc template to make the felixdim Typst template work without extra metadata or superfluous formatting.

## installation

the shell script is available via homebrew:

```sh
brew install quaggaone/tap/panfd
```

**note:** this package depends on the [felixdim-format Typst template](https://github.com/quaggaone/felixdim-typst-templates) being installed as a local Typst package at `@local/felixdim-format:0.0.2`. the homebrew formula handles this installation automatically.

## manual installation (macOS)

if installing manually without homebrew, you need to:

1. install the Typst template as a local package:
   ```sh
   mkdir -p ~/Library/Application\ Support/typst/packages/local/felixdim-format
   ln -s /path/to/felixdim-format-typst ~/Library/Application\ Support/typst/packages/local/felixdim-format/0.0.2
   ```

2. ensure `panfd.sh` is in your PATH

**note:** for other operating systems, adjust the Typst package path according to [Typst's local package documentation](https://github.com/typst/packages#local-packages)
