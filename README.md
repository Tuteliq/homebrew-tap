# SafeNest Homebrew Tap

Homebrew formulae for SafeNest tools.

## Installation

```bash
brew tap safenestSDK/tap
brew install safenest
```

## Available Formulae

| Formula | Description |
|---------|-------------|
| `safenest` | AI-powered child safety analysis CLI |

## Usage

```bash
# Login with your API key
safenest login <your-api-key>

# Analyze text for safety
safenest analyze "Some text to check"

# Detect bullying
safenest detect-bullying "Text to analyze"

# Detect grooming patterns
safenest detect-grooming -m '[{"role":"adult","content":"..."}]'
```

## Get an API Key

Sign up at [safenest.dev](https://safenest.dev) to get your API key.
