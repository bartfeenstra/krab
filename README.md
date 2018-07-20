# Krab

[![Build Status](https://travis-ci.org/bartfeenstra/krab.svg?branch=master)](https://travis-ci.org/bartfeenstra/krab)

Krab is a collection of shell functions that I find useful.

## Usage

```bash
$ ./bin/krab -h
Usage: $ ...krab [OPTION] [COMMAND]

COMMAND is one of:
- envsubst
- run
- semver-components
- semver-validate
- stdio-alert
- stdio-confirm
- stdio-inform
- stdio-state

OPTION is one or more of the following:
    -h  Show this message.
```

### Requirements

- Bash

## Development

### Requirements

- [ShellCheck](https://github.com/koalaman/shellcheck/#installing)
- Git

### Building

Run `./bin/build`.

### Testing

Run `./bin/test`.

### Releasing a new version

Run `./bin/release $VERSION` where `$VERSION` is a valid [Semantic Version](https://semver.org/).