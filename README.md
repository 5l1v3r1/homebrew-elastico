homebrew-elastico
===============
[![Build Status](https://travis-ci.org/dutchcoders/homebrew-elastico.svg?branch=master)](https://travis-ci.org/dutchcoders/homebrew-elastico)

Homebrew formula for elastico.

## Usage

```bash
$ brew tap dutchcoders/homebrew-elastico
$ brew install elastico
```

## Troubleshooting

* Make sure you're using the right formula.  `brew info elastico` should have a
  From line similar to this:

  ```text
  From: https://github.com/dutchcoders/homebrew-elastico/blob/master/Formula/elastico.rb
  ```

  If your formula points elsewhere, then you need to retap the elastico formula.
  Do so with the following sequence of commands:

  ```text
  brew uninstall elastico --force
  brew prune
  brew tap dutchcoders/homebrew-elastico
  brew tap --repair
  brew install elastico
  ```
* Run `brew update` — then try again.
* Run `brew doctor` — the doctor diagnoses common issues.
* You can create a gist log with `brew gist-logs elastico`.
* Use `--verbose` to get the verbose output, i.e. `brew install --verbose elastico`.
* Use `--debug` to be in the debug mode. In the debug mode, when failing, you
  can go into the interactive shell to check the building files before homebrew
  neutralizing them.
