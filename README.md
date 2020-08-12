# ProgressWebView

ProgressWebView library can use webview with progressbar for SwfitUI

[![Swift Version](https://img.shields.io/badge/Swfit-5.0-blue)](https://developer.apple.com/swift)
[![Github](https://img.shields.io/cocoapods/l/ProgressWebView)](https://github.com/ksugawara61/ProgressWebView)
[![CocoaPods](https://img.shields.io/cocoapods/v/ProgressWebView)](https://github.com/ksugawara61/ProgressWebView)

## Install

### CocoaPods

```bash
pod 'ProgressWebView'
```

### Usage

```swift
import SwiftUI
import ProgressWebView

class SampleViewModel: WebViewModel {
    init() {
        super.init(urlString: "https://google.com")
    }

    func useVariables() {
        print(self.urlString)
        print(self.estimatedProgress)
    }
}

struct ContentView: View {
    private let viewModel = SampleViewModel()

    var body: some View {
        ProgressBarWebView(viewModel: self.viewModel)
    }
}
```
