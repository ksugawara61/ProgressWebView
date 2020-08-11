//
//  ProgressWebView.swift
//  ProgressWebView
//
//  Created by 菅原勝也 on 2020/08/11.
//  Copyright © 2020 listadoko. All rights reserved.
//

import SwiftUI

public struct ProgressBarWebView: View {
    @ObservedObject private var viewModel: WebViewModel

    public init(urlString: String) {
        self.viewModel = WebViewModel(urlString: urlString)
    }

    public var body: some View {
        VStack {
            ProgressBar(estimatedProgress: .constant(self.viewModel.estimatedProgress))
            WebView(viewModel: self.viewModel)
        }
    }
}

struct ProgressBarWebView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarWebView(urlString: "https://google.com")
    }
}
