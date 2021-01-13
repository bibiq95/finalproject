//
//  signup1.swift
//  ataeru
//
//  Created by alqattan on 13/01/2021.
//

import SwiftUI

struct signup1: View {
    
   @State var area : String = ""
   @State var block : String = ""
   @State var street: String = ""
    @State var house : String = ""
    @State var name : String = ""
     @State var phone : String = ""
     @State var email : String = ""
    var body: some View {
        VStack{
        Text("Enter your name please")
        TextField(" Enter your name , please ",text: $name)
        Text("Enter your area please")
        TextField(" Enter your area , please ",text:$area)
        Text("Enter your street please")
            VStack{
        TextField(" Enter your street , please ",text:$street)
        Text("Enter your house please")
        TextField(" Enter your house , please ",text:$house)
        Text("Enter your email please")
        TextField(" Enter your email , please ",text:$email)
        Text("Enter your phone please")
        TextField(" Enter your phone , please ",text:$phone )
            }
        }
    }
   // .navigationTitle("sign up")
}

struct signup1_Previews: PreviewProvider {
    static var previews: some View {
        signup1()
    }
}
