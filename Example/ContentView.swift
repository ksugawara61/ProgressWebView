//
//  ContentView.swift
//  Example
//
//  Created by 菅原勝也 on 2020/08/11.
//  Copyright © 2020 listadoko. All rights reserved.
//

import SwiftUI
import ProgressWebView

struct ContentView: View {
    var body: some View {
        ProgressBarWebView(urlString: "https://google.com")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
