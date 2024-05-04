# visa-debugger

[![CI Status](https://github.com/mbarbin/visa-debugger/workflows/ci/badge.svg)](https://github.com/mbarbin/visa-debugger/actions/workflows/ci.yml)

A graphical debugger for [visa](https://mbarbin.github.io/bopkit/project/visa/) assembly programs.

This tool used to be part of the [bopkit](https://github.com/mbarbin/bopkit) repo. It was extracted into a standalone repository from `bopkit.0.2.7`, with plans to remove the [bogue](https://github.com/sanette/bogue) dependency from the main `bopkit` repository.

## Usage

The `visa-debugger` is a pretty basic and experimental GUI meant to help debugging visa assembly programs. It allows you to execute visa programs step by step, while monitoring the state of the memory and the registers. You can also mutate the values of the registers while the program is running, in order to force some jumps, or impact in some other way the execution.

To run:

```sh
$ visa-debugger bogue minus.asm
```

<p>
  <img
    src="https://github.com/mbarbin/bopkit/blob/assets/image/visa-debugger.png?raw=true"
    width='1200'
    alt="Visa_debugger"
  />
</p>

It is implemented with [bogue](https://github.com/sanette/bogue), so perhaps in fact, we can call it the visa-deboguer (ba dum tss).

## Documentation

Check out the bopkit documentation for the [visa project](https://mbarbin.github.io/bopkit/project/visa/doc/assembler/#debugger).

## Install

Visa-debugger can be installed via the [opam](https://opam.ocaml.org) package manager.

Releases for this project are published to a custom opam-repo. To add it to your current opam switch, run:

```sh
opam repo add mbarbin https://github.com/mbarbin/opam-repository.git
```

Then you can install `visa-debugger` using a normal opam workflow.

```sh
opam install visa-debugger
```

## Code documentation

The code documentation of the latest release is built with `odoc` and published to `GitHub` pages [here](https://mbarbin.github.io/visa-debugger).
