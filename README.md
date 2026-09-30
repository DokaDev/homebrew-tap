# DokaDev Homebrew tap

Homebrew formulae for command-line tools by [DokaDev](https://github.com/DokaDev).

```sh
brew tap dokadev/tap
brew install <formula>
```

or in one line: `brew install dokadev/tap/<formula>`.

| Formula | Description |
|---|---|
| [`datarig`](https://github.com/DokaDev/datarig) | A terminal database client (currently tracking its latest release candidate; see below) |

Formulae are updated automatically by each project's release workflow. Whether a release
candidate is published here depends on the project: some publish stable releases only, others
(like `datarig`, until its first stable release ships) also publish their latest release
candidate, so `brew install`/`upgrade` may pick up an rc. Check the project's own release notes
for what a given formula tracks.
