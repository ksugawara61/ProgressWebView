//
//  ContentView.swift
//  Example
//
//  Created by 菅原勝也 on 2020/08/11.
//  Copyright © 2020 listadoko. All rights reserved.
//

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
    @ObservedObject private var viewModel = SampleViewModel()

    var updateButton: some View {
        Button("Open github.com") {
            self.viewModel.updateUrlString(urlString: "https://github.com", isForceUpdate: true)
        }
    }

    var body: some View {
        VStack {
            updateButton
            ProgressBarWebView(viewModel: self.viewModel)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
