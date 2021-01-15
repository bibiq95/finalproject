//
//  welcome.swift
//  ataeru
//
//  Created by alqattan on 14/01/2021.
//

import SwiftUI

struct welcome: View {
    @State var showsignup = false
    @State var area : String = ""
    @State var block : String = ""
    @State var street: String = ""
     @State var house : String = ""
     @State var name : String = ""
      @State var phone : String = ""
      @State var email : String = ""
     @State var password : String = ""
    var body: some View {
        
        NavigationView{
       
            VStack{
                 Rectangle()
                .fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
                .frame(width: UIScreen.main.bounds.width , height: 90, alignment: .top)
                    .ignoresSafeArea()
                    Spacer()
                        
            VStack{
             Text("Welcome to Ataeru shop !")
                .font(.largeTitle)
                .foregroundColor(.black)
            
                Text("Enter your email please:")
                    TextField(" Enter your email , please ",text: $email)
                        .foregroundColor(.black)
                    .background(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .padding(.all)
                
                Text("Enter your password please:")
                    TextField(" Enter your password , please ",text : $password)
                        .foregroundColor(.black)
                    .background(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .padding(.all)
                        
                NavigationLink(
                    destination: ContentView(area: $area, block: $block, street: $street, house: $house, name: $name, phone: $phone, email: $email, password: $password),
                    label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                            .fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
                             
                            .frame(width: 200, height:50)
    
                            Text(" login  ")
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                       
                  
                    }
                )
                Button(action: { showsignup.toggle()}, label: {
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                        .fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
                        
                        .frame(width: 200, height:50)
                    Text("Signup")
                        .foregroundColor(.black)
                    }
                }).sheet(isPresented: $showsignup) {
                    
            signup1(area: $area, block: $block, street: $street, house: $house, name: $name, phone: $phone, email: $email, password: $password)
                }
                
            


            }
                Spacer()
                Spacer()
                Spacer()
                 Rectangle()
             .fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
             .ignoresSafeArea()
             .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.width - 350, alignment: .bottom)
           
                 
            }
    }
    }
}
//struct welcome_Previews: PreviewProvider {
//    static var previews: some View {
//        welcome()
//    }
//}
