//
//  ContentView.swift
//  ataeru
//
//  Created by alqattan on 12/01/2021.
//

import SwiftUI

struct ContentView: View {
    @Binding var area : String
    @Binding var block : String
    @Binding var street: String
     @Binding var house : String
     @Binding var name : String
      @Binding var phone : String
      @Binding var email : String
     @Binding var password : String
    
    var body: some View {
       
            
        
                
                VStack{
                     Rectangle()
                    .fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
                    .frame(width: UIScreen.main.bounds.width , height: 90, alignment: .top)
                        .ignoresSafeArea()
                        Spacer()
                      
                      
                
                    Text("welcome to Ataeru shop !")
                        .font(.title)
                        .foregroundColor(.black)
                         
                }
                    VStack(spacing: 300){
                        
                        
                    HStack
                    {
                        NavigationLink(
                            destination: allitem(area: $area, block: $block, street: $street, house: $house, name: $name, phone: $phone, email: $email, password: $password ,item: clothesdata),
                            label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
                                     .scaledToFit()
                                    .frame(width: 150, height:150)

                                    
                                    Text(" Clothes ")
                                        .foregroundColor(.black)
                                
                                }
                            }
                        )
                        .padding(.leading)
                   
                        
                        NavigationLink(
                            destination: allitem( area: $area, block: $block, street: $street, house: $house, name: $name, phone: $phone, email: $email, password: $password ,item: basketdata),
                            label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
                                     .scaledToFit()
                                    .frame(width: 150, height:150)
            
                                    Text(" Basket  ")
                                        .foregroundColor(.black)
                                    Spacer()
                                }
                               
                          
                            }
                        )
                    
                    .padding()
                      
                    }
                    Spacer()
                   
              
                    
                    }
                   
                    Rectangle()
                .fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
                .ignoresSafeArea()
                .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.width - 300, alignment: .bottom)
              
                    
                    
            
                
            }
            
            }
            
        



//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//            .previewDevice("iPhone 12 Pro")
//    }
//}

struct show: View {

  var d :data
    var body: some View {
        
        
        
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
 
            VStack (alignment: .leading)
            {
                Image(d.pic)
                    .resizable()
                    .scaledToFit()
                    .frame(width:150, height:150)
                    .padding()
            }
            Spacer()
            Spacer()
            Spacer()
        
  
        }
        
      
     
}
}

