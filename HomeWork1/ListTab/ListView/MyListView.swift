//
//  MyListView.swift
//  HomeWork1
//
//  Created by Константин Малышев on 05.04.2020.
//  Copyright © 2020 Константин Малышев. All rights reserved.
//

import SwiftUI

struct MyListView: View {
    
    @EnvironmentObject var viewModel: MyListViewModel
    
    var body: some View {
        
        NavigationView {
                
            List {
                ForEach(viewModel.cars) { car in
                    NavigationLink(destination: CarDetail(car: car)) {
                        MyListViewCell(car: car)
                    }
                }

            }
            .navigationBarTitle("Cars List")
        }
    }
}

//struct MyListView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyListView()
//    }
//}
