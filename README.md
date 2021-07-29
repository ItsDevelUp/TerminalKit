# TerminalKit

Terminal is a simple package that gives you the ability to call shell commands through Swift.

## Usage

Run (sync):

```swift
import TerminalKit

let output = try Terminal().execute("ls ~")
```

Run (async):

```swift
import TerminalKit

Terminal().execute("sleep 2 && ls ~") { result, error in
    //...
}
```

Terminal (bash) with environment variables:

```swift
import TerminalKit

let terminal = Terminal(.bash, env: ["ENV_SAMPLE_KEY": "Hello world!"])
let out = try terminal.execute("echo $ENV_SAMPLE_KEY")
```

You can even set custom ouptut & error handlers.



## Install

Just use the [Swift Package Manager](https://theswiftdev.com/2017/11/09/swift-package-manager-tutorial/) as usual:

```swift
.package(url: "https://github.com/cabrerasiel/TerminalKit", from: "1.0.0"),
```

Don't forget to add "ShellKit" to your target as a dependency:

```swift
.product(name: "TerminalKit", package: "TerminalKit"),
```

That's it.
