//
//  WebView.swift
//  tssc
//
//  Created by feng qijun on 2019/7/13.
//  Copyright © 2019 fengde. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView : UIViewRepresentable {
    
    let urlString: String
    
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: URL(string: urlString)!)
        uiView.load(request)
    }
}

#if DEBUG
struct WebView_Previews : PreviewProvider {
    static var previews: some View {
        WebView(urlString: "https://baike.baidu.com/item/%E6%9D%8E%E7%99%BD/1043")
    }
}
#endif
