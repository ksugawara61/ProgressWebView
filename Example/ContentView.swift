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
    private let viewModel = SampleViewModel()

    var body: some View {
        ProgressBarWebView(viewModel: self.viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
