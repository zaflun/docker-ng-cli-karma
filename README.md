# CI Configuration

1. [Get current Angular CLI Karma version](https://hub.docker.com/r/zaflun/ng-cli-karma/tags)
2. [Add Support for Angular karma tests](#add-support-for-angular-karma-tests)

***

## Add Support for Angular karma tests

### Add custom Launchers to karma.conf.js under browsers
```
...
browsers: ['Chrome'],
---
customLaunchers: {
    ChromeHeadlessCI: {
        base: 'ChromeHeadless',
        flags: ['--no-sandbox']
    }
},
---
singleRun: false,
...
```

### Add Custom Browser to ng test
```
--browsers=ChromeHeadlessCI
```