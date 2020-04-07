//
//  MyListViewModel.swift
//  HomeWork1
//
//  Created by Константин Малышев on 05.04.2020.
//  Copyright © 2020 Константин Малышев. All rights reserved.
//

import Combine
import Foundation

struct Car: Identifiable {
    let id = UUID()
    let model: String
    let year: String
    let color: String
}

final class MyListViewModel: ObservableObject {
    
    @Published private(set) var cars = [Car]()
    
    init() {
        self.cars = [
            Car(model: "Peugeot", year: "2002", color: "Blue"),
            Car(model: "Renault", year: "2015", color: "Red"),
            Car(model: "Toyota", year: "2010", color: "Yellow"),
            Car(model: "BMV", year: "2008", color: "Silver"),
            Car(model: "Kruisler", year: "2020", color: "Red"),
            Car(model: "Mitsubishi", year: "2018", color: "Black"),
            Car(model: "Ford", year: "2016", color: "White")
        ]
    }
}
