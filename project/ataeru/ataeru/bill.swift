//
//  bag.swift
//  ataeru
//
//  Created by alqattan on 12/01/2021.
//

import SwiftUI

struct bill: View {
    
    
    @Binding var area : String
    @Binding var block : String
    @Binding var street: String
     @Binding var house : String
     @Binding var name : String
      @Binding var phone : String
      @Binding var email : String
     @Binding var password : String
    var item : data
   
    @State var buttoncolor: Color = .blue
    @State var btntxt = " pay now "
 
 
    var total : Double
var body: some View {
    
    ZStack{
        
        VStack{
             Rectangle()
            .fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
            .frame(width: UIScreen.main.bounds.width  , height: 90, alignment: .top)
                .ignoresSafeArea()
                Spacer()
        
            VStack (spacing: 35){
                    Spacer()
                Image(item.pic)
                    .resizable()
                    .scaledToFit()
                    .frame(width:150, height:150)
                    .padding()
                    HStack{
                        

                    Text("Name")
                        Spacer()
                        Text("\(name)")

                    }
                    
                  
                    
                    HStack{
                    Text("Adress")
                        
                        Spacer()
                      Text("\(area) \(block) \(house)")
                        
                    }
                    
                    HStack{


                    Text("Phone number")
                        Spacer()
                        Text ("\(phone)")
                            

                    }

                    HStack{


                    Text("Total")
                        Spacer()
                        Text(   "\(total ,specifier: "%.2f") K.D ")
                    }
                    
                   Spacer()
                   
                  
                    Button(action: {
                        self.btntxt="Paid"
                        self.buttoncolor=Color.green
                    }, label: {
                        Text(btntxt)
                       .foregroundColor(.white)
                        
                        .padding()
                      .frame(width: 100, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(buttoncolor)
                        .cornerRadius(8.0)
                        .padding()
                    })

                    .navigationTitle(" check out ")
                } .padding()
            Rectangle()
        .fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
        .ignoresSafeArea()
        .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.width - 300, alignment: .bottom)
             
            }
        
        
        }
   
}
}
//
//struct bag_Previews: PreviewProvider {
//    static var previews: some View {
//        bag()
//    }
//}
