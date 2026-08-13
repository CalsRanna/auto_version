# Bump CLI Tool

A Dart command-line interface for semantic version management of Flutter/Dart projects.

## Features
- 🚀 Semantic versioning (major.minor.patch+buildNumber) support
- 🔄 Automatic version incrementing
- 📦 Direct modification of pubspec.yaml
- 🛠️ Supports both manual version setting and auto-increment

## Installation

### macOS (Homebrew)

```bash
# Add the tap repository
brew tap CalsRanna/tap

# Install the CLI
brew install bump
```

### Windows (Scoop)

```powershell
# Add the bucket repository
scoop bucket add scoop-bucket https://github.com/CalsRanna/scoop-bucket

# Install the CLI
scoop install bump
```

### Build from Source

```bash
git clone https://github.com/CalsRanna/auto_version.git
cd auto_version
dart pub get
dart compile exe bin/bump.dart -o bump -DAPP_VERSION="$(grep '^version:' pubspec.yaml | awk '{print $2}')"
```

## Usage
```bash
bump <command> [arguments]
```

## Available Commands
| Command  | Description                     | Example                   |
|----------|---------------------------------|---------------------------|
| major    | Increment major version         | `bump major` (auto +1)    |
|          | Set specific major version      | `bump major 2`            |
| minor    | Increment minor version         | `bump minor`              |
| patch    | Increment patch version         | `bump patch`              |
| build    | Increment build number          | `bump build`              |
| version  | Show current tool version       | `bump version`            |

📌 **Note:** The `build` command will check `git rev-list --count HEAD`

💡 Pro tip: Use `-v` flag for version checks anywhere in the CLI
