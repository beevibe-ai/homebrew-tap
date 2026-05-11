# Beevibe Homebrew Tap

Homebrew formulas for [Beevibe](https://github.com/beevibe-ai/beevibe) tools.

## Install

```bash
brew tap beevibe-ai/tap
brew install beevibe-daemon
```

## What's published here

| Formula | Description |
|---|---|
| `beevibe-daemon` | The Beevibe daemon — runs agent CLIs locally on your machine. |

## Updates

The `Formula/*.rb` files in this repo are auto-generated and committed by the [release workflow](https://github.com/beevibe-ai/beevibe/blob/main/.github/workflows/release.yml) in the main repo. Each tag push (`v*`) in `beevibe-ai/beevibe` updates the corresponding formula here.

Manual edits to formulas will be overwritten by the next release. To change formula generation, edit `.github/workflows/release.yml` in the main repo.

## License

Formulas in this tap are MIT-licensed. The underlying tools have their own licenses — see the linked repos.
