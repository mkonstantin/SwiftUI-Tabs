//
//  FirstTabView.swift
//  HomeWork1
//
//  Created by Константин Малышев on 07.04.2020.
//  Copyright © 2020 Константин Малышев. All rights reserved.
//

import SwiftUI

struct ButtonView: View {
    @State var showModal: Bool = false
    
    var body: some View {
        VStack {
            Button(
                action: {
                    self.showModal.toggle()
                },
                label: { Text("Open Modal View") }
            )
        }
        .sheet(isPresented: $showModal, onDismiss: { print("Modal closed") }) {
            ButtonViewModalView()
        }
    }
}

struct ButtonViewModalView: View {
    var body: some View {
        Text("First Tab Modal View")
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
