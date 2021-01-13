////
////  signup.swift
////  ataeru
////
////  Created by alqattan on 12/01/2021.
//////
////
////import SwiftUI
//
//struct signup: View {

        var area : String = ""
        var block : String = ""
        var street: String = ""
        var house : String = ""
 var name : String = ""
 var phone : Int = 0
var email : String = ""
    var body: some View{
        Text("Enter your name please")
        TextField(" Enter your name , please ",text:$ name)
        Text("Enter your area please")
        TextField(" Enter your area , please ",text:$ area)
        Text("Enter your street please")
        TextField(" Enter your street , please ",text:$ street)

        Text("Enter your house please")
        TextField(" Enter your house , please ",text:$ house)
        Text("Enter your email please")
        TextField(" Enter your email , please ",text:$ email)
        Text("Enter your phone please")
        TextField(" Enter your phone , please ",text:$ phone)
    }
  //  .navigationTitle("sign up")


//struct signup_Previews: PreviewProvider {
//    static var previews: some View {
//        signup()
//    }
//}
