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
    @Published public var isForceUpdate: Bool = false

    public init(urlString: String) {
        self.urlString = urlString
    }

    open func updateUrlString(urlString: String, isForceUpdate: Bool = false) {
        self.isForceUpdate = isForceUpdate
        self.urlString = urlString
        if (self.isForceUpdate) {
            objectWillChange.send()
        }
    }

    open func updateEstimatedProgress(estimatedProgress: Double) {
        self.estimatedProgress = estimatedProgress
        objectWillChange.send()
    }
}
