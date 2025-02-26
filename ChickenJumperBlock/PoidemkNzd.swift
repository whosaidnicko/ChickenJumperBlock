//
//  PoidemkNzd.swift
//  ChickenJumperBlock
//
//  Created by Nicolae Chivriga on 26/02/2025.
//

import SwiftUI

struct PoidemkNzd: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button {
            self.dismiss()
        } label: {
            Image("poidemkaz")
                .resizable()
                .frame(width: 40, height: 36)
        }

    }
}



extension View {
    func spqriutpreisu() -> some View {
        self.modifier(Wikruqbotwbz())
    }
}
@preconcurrency import WebKit
import SwiftUI
import WebKit
extension WKWebViewRepresentable {
    class Coordinator: NSObject, WKUIDelegate, WKNavigationDelegate {
        var parent: WKWebViewRepresentable
        private var popupWebViews: [WKWebView] = []

        init(_ parent: WKWebViewRepresentable) {
            self.parent = parent
        }

        func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
            // Handle popup windows
            guard navigationAction.targetFrame == nil else {
                return nil
            }

            let popupWebView = WKWebView(frame: .zero, configuration: configuration)
            popupWebView.uiDelegate = self
            popupWebView.navigationDelegate = self

            parent.webView.addSubview(popupWebView)

            popupWebView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                popupWebView.topAnchor.constraint(equalTo: parent.webView.topAnchor),
                popupWebView.bottomAnchor.constraint(equalTo: parent.webView.bottomAnchor),
                popupWebView.leadingAnchor.constraint(equalTo: parent.webView.leadingAnchor),
                popupWebView.trailingAnchor.constraint(equalTo: parent.webView.trailingAnchor)
            ])

            popupWebViews.append(popupWebView)
            return popupWebView
        }

        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            // Notify when the main page finishes loading
            parent.onLoadCompletion?()
            parent.webView.layer.opacity = 1 // Reveal the webView
        }

        func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
            decisionHandler(.allow)
        }

        func webViewDidClose(_ webView: WKWebView) {
            // Cleanup closed popup WebViews
            popupWebViews.removeAll { $0 == webView }
            webView.removeFromSuperview()
        }
    }
}
