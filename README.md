A basic low fidelity financial modelling tool

tasks:
  - kdb should be populated based on queries and fill gaps
  - multiple data vendors should be able to be used for backfilling (google/yahoo)
  - initial backfilling should use daily data and request it over a 200 week period

? - how to identify the value of the signals when using mean reversion/trend following
    ie mean reversion in a turbulent market, trend follow in a regular market

what is "performance" ie sharp ratio or % return (over index?)

ideas:
  - set out exit plans/notifications before purchasing
  - focus on 'bullish' international markets (latam/euro/asia/africa)
  - map all stocks to etfs
  - identifying/structing porfolio and position sizes vs trading signals
  - strategy scaling for capital size

(49/51% coin flip is optimized to only invest 2% (< 2% is too small a gain, 4% makes loss))

## environment

Currentlty the .env file contains the following keys

| Variable        | Description                                               |
|-----------------|-----------------------------------------------------------|
| KDB_LICENSE_B64 | Kdb-x licence key as provided by kdb                      |
| TWS_USERID      | Interactive brokers user id to authenticate with          |
| TWS_PASSWORD    | Interactive brokers user password to authenticate with    |
| TRADING_MODE    | Interactive brokers platform trading mode (paper or live) |
| READ_ONLY_API   | Interactive brokers option for making data read only      |


See https://github.com/gnzsnz/ib-gateway-docker for more details regarding the
environment variables
