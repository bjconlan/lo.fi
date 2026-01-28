- asx data is resolved via the ibkr tws/gateway api as such requires that the
  service is available and running
- nasdaq data is resolved via https://data.nasdaq.com/databases/EOD and as such
  requires an API key (provided once signing up to the nasdaq data link services)

NASDAQ equities 'open' hours 9:00 - 16:30 America/New York
ASX equities 'open' hours 10:00 - 16:20 Australia/Sydney

Scheduling EOD data should be performed 3 hours after the end of trading in each
exchange.