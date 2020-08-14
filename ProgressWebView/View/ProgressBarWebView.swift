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

    public init(viewModel: WebViewModel) {
        self.viewModel = viewModel
    }

    public var body: some View {
        VStack(spacing: 0) {
            ProgressBar(estimatedProgress: .constant(self.viewModel.estimatedProgress))
            WebView(viewModel: self.viewModel)
        }
    }
}

struct ProgressBarWebView_Previews: PreviewProvider {
    static let viewModel = WebViewModel(urlString: "https://google.com")
    static var previews: some View {
        ProgressBarWebView(viewModel: self.viewModel)
    }
}
