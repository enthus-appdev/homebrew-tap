# enthus-appdev/homebrew-tap

Homebrew tap for [enthus GmbH](https://github.com/enthus-appdev) command-line tools — all designed to be driven equally well by humans and LLM agents.

## Usage

Add the tap and install any formula:

```shell
brew tap enthus-appdev/tap
brew install atl
brew install esq
brew install n8nctl
```

Or install directly without tapping first:

```shell
brew install enthus-appdev/tap/atl
```

Upgrade all installed formulas from this tap with `brew upgrade`.

## Available formulas

| Formula | Source | Description |
|---|---|---|
| [`atl`](Formula/atl.rb) | [`atl-cli`](https://github.com/enthus-appdev/atl-cli) | Jira and Confluence CLI — a CLI alternative to the Atlassian MCP |
| [`esq`](Formula/esq.rb) | [`esq-cli`](https://github.com/enthus-appdev/esq-cli) | Query and inspect Elasticsearch clusters with environment switching |
| [`n8nctl`](Formula/n8nctl.rb) | [`n8n-cli`](https://github.com/enthus-appdev/n8n-cli) | Manage n8n workflows — pull, push, execute, activate |

Automated formula bumps on each upstream release are a planned follow-up — until then, formulas are bumped manually.

## Platforms

All formulas ship prebuilt binaries for:

- macOS (Apple Silicon and Intel)
- Linux (arm64 and amd64)

## License

The tap's contents — this README and the `Formula/*.rb` files — are licensed under the [MIT License](LICENSE). Each installed binary is governed by the license in its source repository.
