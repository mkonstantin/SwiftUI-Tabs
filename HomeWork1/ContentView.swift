//
//  ContentView.swift
//  HomeWork1
//
//  Created by Константин Малышев on 05.04.2020.
//  Copyright © 2020 Константин Малышев. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var myListViewModel: MyListViewModel
    @State var selectedView: Int = 0
    
    var body: some View {
        TabView(selection: $selectedView) {
            WelcomeView(selectedView: $selectedView)
                .tag(0)
                .tabItem {
                    VStack {
                        Text("Welcome")
                        Image(systemName: "hand.thumbsup")
                    }
            }
            
            MyListView()
                .tag(1)
                .tabItem {
                    VStack {
                        Text("List")
                        Image(systemName: "list.bullet.indent")
                    }
                .environmentObject(myListViewModel)
            }
            
            ButtonView()
                .tag(2)
                .tabItem {
                    VStack {
                        Text("Button")
                        Image(systemName: "command")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
