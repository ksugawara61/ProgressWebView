//
//  WebViewCoordinator.swift
//  ProgressWebView
//
//  Created by 菅原勝也 on 2020/08/11.
//  Copyright © 2020 listadoko. All rights reserved.
//

import Foundation
import WebKit

// NOTE: https://qiita.com/s_emoto/items/dc3d61626155f5cf83e7
class WebViewCoordinator: NSObject, WKNavigationDelegate {
    private var viewModel: WebViewModel

    init(_ viewModel: WebViewModel) {
        self.viewModel = viewModel
    }

    // 読み込み設定（リクエスト前）
    func webView(_ webView: WKWebView,
                 decidePolicyFor navigationAction: WKNavigationAction,
                 decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        updateUrlString(webView: webView)
        updateEstimatedProgress(webView: webView)
        decisionHandler(.allow)
    }

    // 読み込み準備開始
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        updateEstimatedProgress(webView: webView)
    }

    // 読み込み設定（レスポンス取得後）
    func webView(_ webView: WKWebView,
                 decidePolicyFor navigationResponse: WKNavigationResponse,
                 decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
        updateEstimatedProgress(webView: webView)
        decisionHandler(.allow)
    }

    // 読み込み開始
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        updateEstimatedProgress(webView: webView)
    }

    // ユーザ認証（このメソッドを呼ばないと認証してくれない）
    func webView(_ webView: WKWebView,
                 didReceive challenge: URLAuthenticationChallenge,
                 completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        updateEstimatedProgress(webView: webView)
        completionHandler(.useCredential, nil)
    }

    // 読み込み完了
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        updateUrlString(webView: webView)
        updateEstimatedProgress(webView: webView)
    }

    // 読み込み失敗検知
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError: Error) {
        updateEstimatedProgress(webView: webView)
    }

    // 読み込み失敗
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError: Error) {
        updateEstimatedProgress(webView: webView)
    }

    // リダイレクト
    func webView(_ webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation:WKNavigation!) {
        updateEstimatedProgress(webView: webView)
    }

    private func updateUrlString(webView: WKWebView) {
        if let url = webView.url {
            self.viewModel.updateUrlString(urlString: url.absoluteURL.absoluteString)
        }
    }

    private func updateEstimatedProgress(webView: WKWebView) {
        self.viewModel.updateEstimatedProgress(estimatedProgress: webView.estimatedProgress)
    }
}
