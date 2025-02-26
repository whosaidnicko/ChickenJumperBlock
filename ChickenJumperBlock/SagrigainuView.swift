//
//  SagrigainuView.swift
//  ChickenJumperBlock
//
//  Created by Nicolae Chivriga on 26/02/2025.
//

import SwiftUI
import Lottie
struct SagrigainuView: View {
    @State var ifhinfinih: Bool = false
    var body: some View {
        ZStack {
            if !ifhinfinih {
                LottieView(animation: .named("razveastaiou"))
                    .playing(loopMode: .loop)
                    .resizable()
                    .frame(width: 250, height: 250)
            }
            WKWebViewRepresentable(url: URL(string: "https://game.huhgames.com/ChickenJumper/")!) {
                self.ifhinfinih = true 
                Haptics.shared.play(.rigid)
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: PoidemkNzd())
    }
}
