# Contributing to this fork (pokeheartgold-slop)

<!--toc:start-->
- [Relationship to pret/pokeheartgold](#relationship-to-pretpokeheartgold)
- [AI Policy (this fork only)](#ai-policy-this-fork-only)
- [Code Formatting](#code-formatting)
<!--toc:end-->

These guidelines cover contributions to **this fork only**. The first two sections below are specific to this fork and replace upstream's introduction and AI policy. [Code Formatting](#code-formatting) is unchanged from upstream.

## Relationship to pret/pokeheartgold

This is an unofficial fork that pret doesn't endorse or review. The canonical project is [pret/pokeheartgold](https://github.com/pret/pokeheartgold), and its [CONTRIBUTING.md](https://github.com/pret/pokeheartgold/blob/master/CONTRIBUTING.md) **prohibits AI-generated contributions**. That policy covers anything you submit to pret.

- Do not submit code from this fork to pret, including code adapted or rewritten from it.
- Do not bring issues or questions about this fork to pret maintainers or pret community channels. Use this repository's issue tracker.

## AI Policy (this fork only)

AI-assisted contributions to *this fork* are welcome. The only thing that matters is the result: the code must compile and produce a byte-for-byte matching ROM. How you got there — by hand, with a script, or with an AI tool — is up to you.

## Code Formatting

This repository includes an opinionated `clang-format` specification to ensure that we maintain a common code style. For convenience, a pre-commit hook is also provided in `.githooks` which will run `clang-format` against any staged changes prior to executing a commit.

### Requirements

- `clang-format@18` or newer

### Usage

To set up the pre-commit hook:

```sh
git config --local core.hooksPath .githooks/
```

To run the formatter on the full source tree:

```bash
./format.sh
```

### Nonmatching functions

clang-format does not recognize the syntax for inline asm that is required by mwccarm, so it should be disabled for non-matching functions specifically. clang-format accepts directives via comments of the form `// clang-format [on|off]`. Example:

```c
#ifdef NONMATCHING
void func() {
    // ...
}
#else
// clang-format off
asm void func() {
    push {lr}
    // ...
    pop {pc}
}
// clang-format on
#endif // NONMATCHING
```

### Ubuntu (WSL) Installation

On older versions of Ubuntu, clang-format will default to earlier versions.
To install clang-format-18 on Ubuntu (WSL), run the following:
```sh
wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh 18
sudo apt install clang-format-18
```
And then create a symbolic link:
```sh
ln -s /usr/bin/clang-format-18 /usr/bin/clang-format
```

If you're using the pre-commit hook, you also want to set up a symlink for git:
```sh
git config alias.clang-format clang-format-18
```
