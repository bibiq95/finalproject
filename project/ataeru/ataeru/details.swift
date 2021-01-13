//
//  details.swift
//  ataeru
//
//  Created by alqattan on 12/01/2021.
//

import Foundation
struct data : Identifiable {
    var pic : String
    var price : Double
    let id = UUID()
}
var clothesdata = [
    
    data(pic: "2", price: 40),
    data(pic: "3", price: 15),
    data(pic: "4", price: 29),
    data(pic: "5", price: 20),
    data(pic: "6",price: 31),
    data(pic: "7",price: 41)
]
var basketdata = [
    data(pic: "8", price: 31),
    data(pic: "9", price: 31),
    data(pic: "10", price: 29),
   
]


let allsize =  ["1 month ","3 months","6 months" , "12 months", "18 months", "2 years" , "3 years", "4 years" , "5 years" , " 6 years "]
