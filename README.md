# LoggingOSLog

[OSLog](https://developer.apple.com/documentation/os/oslog) logging backend for [swift-log](https://github.com/apple/swift-log).

Enhancment of [swift-log-oslog](https://github.com/chrisaljoudi/swift-log-oslog) adding color coding and proper redacting for non debug builds.

## Getting Started

If you're adding through Xcode's Swift Package Manager integration (Xcode 11 and higher), you can simply use:

```
https://github.com/grangej/LoggingOSLog.git
```

And use `0.2.1` as the base version. If adding as a dependency in your `Package.swift`:

```swift
.package(url: "https://github.com/grangej/LoggingOSLog.git", .from("1.0.0"))
```

## Usage

During app startup/initialization:

```swift
import Logging
import LoggingOSLog

/// Configure `swift-log` logging system to use OSLog backend
LoggingSystem.bootstrap(LoggingOSLog.init)
```

Then use `swift-log` [per usual](https://github.com/apple/swift-log#lets-log), for example:

```swift
let logger = Logger(label: "com.yourcompany.yourawesomeapp")

/// ...

logger.info("Unified Logging is pretty cool.")
```

For more details on all the features of the Swift Logging API, check out the [`swift-log`](https://github.com/apple/swift-log) repo.
