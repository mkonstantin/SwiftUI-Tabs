//
//  MyListViewCell.swift
//  HomeWork1
//
//  Created by Константин Малышев on 05.04.2020.
//  Copyright © 2020 Константин Малышев. All rights reserved.
//

import SwiftUI

struct MyListViewCell: View {
    
    var car: Car
    var body: some View {
        HStack {
            CellImageView()
                .padding([.leading, .trailing], 10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Модель: \(car.model), \(car.color)").font(.title)
                Text("Год выпуска: \(car.year)")
            }.padding([.top, .bottom], 10)
            
            Spacer()
            
        }.frame(height: 60)
    }
    
}

struct CellImageView: View  {
    var body: some View {
        ZStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 50, height: 50)
            Circle()
                .frame(width: 10, height: 10)
                .foregroundColor(.green)
                .padding([.leading, .top], 30)
        } .background(Color.gray)
    }
}

struct MyListViewCell_Previews: PreviewProvider {
    static var previews: some View {
        MyListViewCell(car: Car(model: "ads", year: "121", color: "color"))
    }
}
