//
//  WelcomeView.swift
//  HomeWork1
//
//  Created by Константин Малышев on 07.04.2020.
//  Copyright © 2020 Константин Малышев. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    
    @Binding var selectedView: Int
    
    var body: some View {
        VStack(alignment: .center, spacing: 10, content: {
            Text("Click button to open Cars List")
            
            Button(action: {
                self.selectedView = 1
            }, label: {
                 Text("Open list")
            })
        })
    }
    
}

//struct WelcomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        WelcomeView()
//    }
//}
