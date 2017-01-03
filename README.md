# cf-example-cf-cli

# Codefresh command line manager
This package provides a unified command line interface to Codefresh.

## Installation

```
$ npm install -g @codefresh-io/cf-cli
```

## Compositions

```
$ cf-cli compositions <sub-command> [options]
```

| Sub-command | Description |
| ----------- |:-----------|
| ls     | list of compositions |
| create | create a new composition |
| remove | delete composition |
| run    | launch a composition |

```
$ cf-cli compositions ls [options]
```

| Option         | Alias | Demand | Type | Description |
| ----------------  |:-----:|:------:|:----:|:-----------|
| --token          |       |          | string | access token |
| --tofile         |       |          | string | save result to file |
| --table          |       |          | boolean | output as table to console |
| --tokenFile      |       |          | string | access token file, default: "$HOME.codefresh/accessToken.json" |
| --logLevel       | --log |          | string | choices: "error", "info", "debug"; default: "error" |
| --help           | -h    |          | boolean | show list of options for command |

```
$ cf-cli compositions create [options]
```

| Option         | Alias | Demand | Type | Description |
| ----------------  |:-----:|:------:|:----:|:-----------|
| --token          |       |          | string | access token |
| --tofile         |       |          | string | save result to file |
| --file           |       | required | string | path to <file>.json. Content of the file in the format {"isAdvanced":false,"vars":[{"key":"test_key","value":"test_value"}],"yamlJson":"path to your composition.yml","name":"string"} |
| --tokenFile      |       |          | string | access token file, default: "$HOME.codefresh/accessToken.json" |
| --logLevel       | --log |          | string | choices: "error", "info", "debug"; default: "error" |
| --help           | -h    |          | boolean | show list of options for command |

```
$ cf-cli compositions remove [options]
```

| Option         | Alias | Demand | Type | Description |
| ----------------  |:-----:|:------:|:----:|:-----------|
| --token          |       |          | string | access token |
| --id             |       | required | string | id of composition |
| --tokenFile      |       |          | string | access token file, default: "$HOME.codefresh/accessToken.json" |
| --logLevel       | --log |          | string | choices: "error", "info", "debug"; default: "error" |
| --help           | -h    |          | boolean | show list of options for command |

```
$ cf-cli compositions run [options]
```

| Option         | Alias | Demand | Type | Description |
| ----------------  |:-----:|:------:|:----:|:-----------|
| --token          |       |          | string | access token |
| --id             |       | required | string | id of composition |
| --vars           |       |          | string | composition variables. Format [{"key":"","value":""}]; default: [] |
| --tokenFile      |       |          | string | access token file, default: "$HOME.codefresh/accessToken.json" |
| --logLevel       | --log |          | string | choices: "error", "info", "debug"; default: "error" |
| --help           | -h    |          | boolean | show list of options for command |
