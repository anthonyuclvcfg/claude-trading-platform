# American Fox Trading Platform

Self-Evolving AI Trade Signals

American Fox® Trading Platform provides performance statistics, strategy versions, and historical results across multiple markets. Its underlying automated market analysis system uses AI-managed, self-evolving algorithms to study market behavior and price dynamics, seeking to identify and statistically evaluate potential probabilistic edges through disciplined research, while accounting for uncertainty and the limits of AI-driven prediction. Algorithm changes may not improve performance. The plugin supports research and monitoring; it does not execute trades or provide personalized investment advice. Historical results offer context, without guaranteeing future performance, predictive accuracy, or a trading advantage.

## What you get

- An interactive dashboard inside Claude for CRYPTO, STOCKS, OPTIONS, FOREX and EVENTS.
- Overall results, Daily results for 7 or 15 days in your time zone, open Positions, Strategy versions with Active days, and detailed closed trades.
- Results that keep unknown values unavailable instead of showing them as zero, with source timestamps and coverage.
- Two starter commands:
  - `/american-fox-trading-platform-public:daily-results-15-days`: Daily results for the last 15 days in your time zone.
  - `/american-fox-trading-platform-public:crypto-usd-stocks-versions`: CRYPTO results in USD and a comparison of STOCKS strategy versions.

## Install

**Claude and Claude Desktop:** open **Customize → Plugins**, choose **Add marketplace**, enter `anthonyuclvcfg/claude-trading-platform`, and install **American Fox Trading Platform**. Then open the plugin's **Connectors** tab and connect `american-fox-public-results`. No sign-in is needed.

**Claude Code:**

```
/plugin marketplace add anthonyuclvcfg/claude-trading-platform
/plugin install american-fox-trading-platform-public@american-fox
```

Ask, for example: *Show Daily results for the last 15 days using my timezone, preserving unknown periods.*

## How it works

The plugin adds one connector, `american-fox-public-results`, at `https://www.americanfox.org/signals/claude`. Its single tool, `view_strategies`, is read-only. It returns American Fox's approved public results and displays them in an interactive panel. The connector needs no account, sign-in or API key, and it cannot place orders, move funds, switch accounts, or reveal proprietary rules or credentials.

## Data and privacy

Requests go only to www.americanfox.org and contain the market, section, number of records and, when known, your time zone. See the privacy policy below.

## Links

- Website: https://americanfox.org/signals
- Support: https://americanfox.org/signals/support
- Privacy policy: https://americanfox.org/signals/privacy
- Terms of service: https://americanfox.org/signals/terms

## Disclaimer

Results are recorded platform results for research and monitoring; each states whether its executions were simulated or recorded. They are informational only, are not investment advice, and do not guarantee future performance.

## License

Proprietary. Copyright © 2026 American Fox Corporation. All rights reserved. See [LICENSE](LICENSE).
