//
//  WebView.swift
//  h4ck3r_n3w5
//
//  Created by Piotr Ćwiertnia on 01/09/2021.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable, View {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
