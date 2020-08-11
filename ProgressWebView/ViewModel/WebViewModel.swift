//
//  WebViewModel.swift
//  ProgressWebView
//
//  Created by 菅原勝也 on 2020/08/11.
//  Copyright © 2020 listadoko. All rights reserved.
//

import Foundation

class WebViewModel: ObservableObject {
    @Published var urlString: String
    @Published var estimatedProgress: Double = 0.0

    init(urlString: String) {
        self.urlString = urlString
    }

    func updateUrlString(urlString: String) {
        self.urlString = urlString
    }

    func updateEstimatedProgress(estimatedProgress: Double) {
        self.estimatedProgress = estimatedProgress
        objectWillChange.send()
    }
}
