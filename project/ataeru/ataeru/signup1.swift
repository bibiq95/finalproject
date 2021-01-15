//
//  signup1.swift
//  ataeru
//
//  Created by alqattan on 13/01/2021.
//

import SwiftUI

struct signup1: View {
    
    
    @Environment (\.presentationMode)var presentation

    
    @Binding var area : String
    @Binding var block : String
    @Binding var street: String
     @Binding var house : String
     @Binding var name : String
      @Binding var phone : String
      @Binding var email : String
     @Binding var password : String
    
   
    var body: some View {
        ZStack{
            
            VStack{
                 Rectangle()
                .fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
                .frame(width: UIScreen.main.bounds.width  , height: 90, alignment: .top)
                    .ignoresSafeArea()
                    Spacer()
                ScrollView(.vertical , showsIndicators:false){
        VStack{
        Text("Enter your name please:")
        TextField(" Enter your name , please ",text: $name)
            .background(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            .padding()
        Text("Enter your area please:")
        TextField(" Enter your area , please ",text:$area)
            .background(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            .padding()
            Text("Enter your block please:")
            TextField(" Enter your block , please ",text:$block)
                .background(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .padding()
        Text("Enter your street please:")
            VStack{
        TextField(" Enter your street , please ",text:$street)
            .background(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            .padding()
        Text("Enter your house please:")
        TextField(" Enter your house , please ",text:$house)
            .background(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            .padding()
        Text("Enter your email please:")
        TextField(" Enter your email , please ",text:$email)
            .background(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            .padding()
                Text("Enter your password please:")
                TextField(" Enter your password , please ",text:$password)
                    .background(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .padding()
        Text("Enter your phone please:")
        TextField(" Enter your phone , please ",text:$phone )
            .background(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            .padding()
            }
            
            Button(action: {presentation.wrappedValue.dismiss()}, label: {
                Text("signup")
            })
            
        }
            
        }
                Rectangle()
            .fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
            .ignoresSafeArea()
            .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.width - 350, alignment: .bottom)
    }
            
            
   // .navigationTitle("sign up")
}
    }}
//struct signup1_Previews: PreviewProvider {
//    static var previews: some View {
//        signup1()
//    }
//}
