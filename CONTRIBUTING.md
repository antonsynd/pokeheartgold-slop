# Contributing to this fork (pokeheartgold-slop)

<!--toc:start-->
- [Relationship to pret/pokeheartgold](#relationship-to-pretpokeheartgold)
- [AI Policy (this fork only)](#ai-policy-this-fork-only)
- [Submitting changes](#submitting-changes)
- [Code Formatting](#code-formatting)
<!--toc:end-->

These guidelines cover contributions to **this fork only**. The first three sections below are specific to this fork and replace upstream's introduction and AI policy. [Code Formatting](#code-formatting) is unchanged from upstream.

## Relationship to pret/pokeheartgold

This is an unofficial fork that pret doesn't endorse or review. The canonical project is [pret/pokeheartgold](https://github.com/pret/pokeheartgold), and its [CONTRIBUTING.md](https://github.com/pret/pokeheartgold/blob/master/CONTRIBUTING.md) **prohibits AI-generated contributions**. That policy covers anything you submit to pret.

- Do not submit code from this fork to pret, including code adapted or rewritten from it.
- Do not bring issues or questions about this fork to pret maintainers or pret community channels. Use this repository's issue tracker.

## AI Policy (this fork only)

AI-assisted contributions to *this fork* are welcome. The only thing that matters is the result: the code must compile and produce a byte-for-byte matching ROM. How you got there — by hand, with a script, or with an AI tool — is up to you.

## Submitting changes

`mainline` is this fork's working branch. `master` only tracks upstream. `mainline` is protected, so every change goes through a pull request against it, and the `build` check must pass before it merges.

1. **Claim the file first.** Before you start converting `asm/<name>.s`, check the open pull requests and issues to see whether someone else is already working on it. If nobody is, open an issue titled `Claim asm/<name>.s` (`python3 tools/decomp_harness/claim.py open asm/<name>.s` does both checks and opens it), or open a draft PR. Put `Closes #<issue>` in the commit that lands the file. Claims can go stale: if one has sat for a while with no PR, ask on the issue before taking the file over. Close the claim if you give up, so the file goes back into the pool. `tools/decomp_harness/next_target.sh --info` suggests the next file to take.
2. **Send one asm file per pull request.** Splitting an overlay into chunks (see [CLAUDE.md](CLAUDE.md#decompilation-workflow)) is its own PR.
3. **Both ROMs must match.** Before you open the PR, `make GAME_VERSION=HEARTGOLD check` and `make GAME_VERSION=SOULSILVER check` must both pass. CI checks both again on the PR (the required `build` check), so a mismatch can't merge.
4. **Prune the drafts.** After a file matches, run `python3 tools/decomp_harness/twins.py prune asm/<name>.s` and commit the result. This drops the `nonmatching/` drafts for the functions that are now real C.
5. **Don't edit the progress bars in `README.md`.** CI regenerates them after every merge.

## Code Formatting

This repository includes an opinionated `clang-format` specification to ensure that we maintain a common code style. For convenience, a pre-commit hook is also provided in `.githooks` which will run `clang-format` against any staged changes prior to executing a commit.

### Requirements

- `clang-format@18` or newer

CI's `pr-lint` check runs clang-format 19, and that is the version the tree is formatted with. Newer releases can disagree on code that 19 accepts (clang-format 23 would reformat some upstream files), so if the check flags a file the pre-commit hook left alone, format it with 19 (`pip install clang-format==19.1.7` installs it). To make the pre-commit hook and `./format.sh` use it, run `git config clangFormat.binary /path/to/clang-format-19`.

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
