//
//  CentermivView.swift
//  ChickenJumperBlock
//
//  Created by Nicolae Chivriga on 26/02/2025.
//

import SwiftUI

struct CentermivView: View {
    @State var aperbo: Bool = false 
    var body: some View {
        ZStack {
            Image("orugebgkr")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("lougqas")
                
                Image("prigua")
                
                NavigationLink {
                    SagrigainuView()
                } label: {
                    Image("igumlps")
                }

                
                
                NavigationLink {
                    Legegreatsp()
                } label: {
                    Image("npishowure")
                        .overlay {
                            Text("RULES")
                                .font(.system(size: 25, weight: .bold, design: .monospaced))
                                .foregroundStyle(.black)
                        }
                }

               
                
                Button {
                    if let url = URL(string: "mailto:miloshtakonov@icloud.com") {
                        if UIApplication.shared.canOpenURL(url) {
                            UIApplication.shared.open(url)
                        }
                    }
                } label: {
                    Image("npishowure")
                        .overlay {
                            Text("SUPPORT")
                                .font(.system(size: 25, weight: .bold, design: .monospaced))
                                .foregroundStyle(.black)
                        }
                }

              
                    
            }
            .scaleEffect(self.aperbo ? 1 : 0)
            .animation(Animation.bouncy.delay(0.25), value: self.aperbo)
        }
        .navigationBarBackButtonHidden()
        .onAppear() {
            aperbo = true
            Haptics.shared.play(.heavy)
        }
    }
}
