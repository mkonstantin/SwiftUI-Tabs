//
//  CarDetail.swift
//  HomeWork1
//
//  Created by Константин Малышев on 07.04.2020.
//  Copyright © 2020 Константин Малышев. All rights reserved.
//

import SwiftUI

struct CarDetail: View {
    
    var car: Car
    var body: some View {
        
        VStack(alignment: .center, spacing: 20) {
            Text("\(car.model), \(car.color)")
                .font(.title)
            Divider().accentColor(.red)
            
            Text(car.year)
        }
        
    }
}

struct CarDetail_Previews: PreviewProvider {
    static var previews: some View {
        CarDetail(car: Car(model: "asd", year: "2102", color: "color"))
    }
}
