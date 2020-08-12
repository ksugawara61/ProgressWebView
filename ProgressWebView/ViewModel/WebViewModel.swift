//
//  WebViewModel.swift
//  ProgressWebView
//
//  Created by 菅原勝也 on 2020/08/11.
//  Copyright © 2020 listadoko. All rights reserved.
//

import Foundation

open class WebViewModel: ObservableObject {
    @Published public var urlString: String
    @Published public var estimatedProgress: Double = 0.0

    public init(urlString: String) {
        self.urlString = urlString
    }

    open func updateUrlString(urlString: String) {
        self.urlString = urlString
    }

    open func updateEstimatedProgress(estimatedProgress: Double) {
        self.estimatedProgress = estimatedProgress
        objectWillChange.send()
    }
}
