# Krab

[![Build Status](https://travis-ci.org/bartfeenstra/krab.svg?branch=master)](https://travis-ci.org/bartfeenstra/krab)

Krab is a collection of shell functions that I find useful.

## Usage

```bash
$ ./bin/krab -h
Usage: $ krab [OPTION] [COMMAND]

COMMAND is one of:
    - envsubst
    - migrate
    - run
    - semver-components
    - semver-validate
    - stdio-alert
    - stdio-confirm
    - stdio-inform
    - stdio-state
    - time

OPTION is one or more of the following:
    -h  Show this message.
```

### Requirements

- Bash

## Features & use cases

### Notifications
Formatted notifications can be sent to `stderr` using the `stdio-*` commands. To display an error, run
`krab stdio-alert 'Something went wrong!'`.

### Templating
`krab envsubst` substitutes environment variables in its `stdin` using a syntax familiar from web templating engines,
avoiding the dollar sign (`$`) in shell variable notation, which is often a special character. To make your shell greet
you, run `echo 'Hi there, {{ USER }}!' | ./bin/krab envsubst`.

### Test runner
If your tests are all executable files in a `./tests` directory, you can run them using
`find ./tests -print0 | xargs -0 ./bin/krab run -l`. Say `./tests` contains other files such as test asserts as well,
and you want to run your tests in order, you can prefix them with a number, and add an extension like `01-linter.test`
and run `find ./tests -type f -name '*.test' -print0 | sort -z | xargs -0 krab run -l`.

### Timing & benchmarks
To time or benchmark the execution of a command, use `time -i X`, where `X` is the number of iterations you want the
command to be run. The output is similar to the UNIX `time` command, but all times are averaged across the iterations.
Example:
```
$ ./bin/krab time -i 3 sleep 3
Average run times across 3 iteration(s):
Real: 3.000 seconds
User: 0.000 seconds
Sys: 0.000 seconds
```

## Development

### Requirements

- [ShellCheck](https://github.com/koalaman/shellcheck/#installing)
- Git

### Building

Run `./bin/build-dev`.

### Testing

Run `./bin/test`.

### Releasing a new version

Run `./bin/release $VERSION` where `$VERSION` is a valid [Semantic Version](https://semver.org/).