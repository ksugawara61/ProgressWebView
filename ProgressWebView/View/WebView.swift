//
//  WebView.swift
//  ProgressWebView
//
//  Created by 菅原勝也 on 2020/08/11.
//  Copyright © 2020 listadoko. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    @ObservedObject var viewModel: WebViewModel

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.navigationDelegate = context.coordinator
        if let url = URL(string: viewModel.urlString) {
            webView.load( URLRequest(url: url))
        }
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        return
    }

    func makeCoordinator() -> WebViewCoordinator {
        return WebViewCoordinator(viewModel)
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(viewModel: WebViewModel(urlString: "https://google.com"))
    }
}
