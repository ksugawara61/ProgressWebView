//
//  ProgressBar.swift
//  ProgressWebView
//
//  Created by 菅原勝也 on 2020/08/11.
//  Copyright © 2020 listadoko. All rights reserved.
//

import SwiftUI

struct ProgressBar: UIViewRepresentable {
    @Binding var estimatedProgress: Double

    func makeUIView(context: Context) -> UIProgressView {
        let uiProgressView = UIProgressView()
        uiProgressView.progress = Float(self.estimatedProgress)
        uiProgressView.alpha = 1.0
        uiProgressView.isHidden = false
        return uiProgressView
    }

    func updateUIView(_ uiProgressView: UIProgressView, context: Context) {
        if (self.estimatedProgress >= 1.0) {
            uiProgressView.alpha = 0.0
            uiProgressView.setProgress(0.0, animated: false)
            uiProgressView.isHidden = true
        } else {
            uiProgressView.alpha = 1.0
            uiProgressView.isHidden = false
            uiProgressView.setProgress(Float(self.estimatedProgress), animated: true)
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(estimatedProgress: .constant(0.5))
    }
}
