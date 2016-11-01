# ForumAlerts

[![CircleCI](https://circleci.com/gh/mikeastock/forum-alerts.svg?style=svg&circle-token=9074eb710b278f686849eb1c2c9c5d9ba1d0cce5)](https://circleci.com/gh/mikeastock/forum-alerts)

Simple mix task that parses FredMiranda forums for items on sale

## Usage

There is a single mix task that is currently ran on a hourly basis via [Heroku's
scheduler](https://devcenter.heroku.com/articles/scheduler). To use this mix task
pass in regex as search queries.

The application notifies new matches to a Slack channel that is set with
`SLACK_CHANNEL`. For Slack authentication `SLACK_TOKEN` needs to be set.

```bash
mix forum_alerts "85.*1.4" "14-24"
```
