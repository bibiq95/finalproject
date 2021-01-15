//
//  bag.swift
//  ataeru
//
//  Created by alqattan on 14/01/2021.
//

import SwiftUI

struct bag: View {
    
    @Binding var area : String
    @Binding var block : String
    @Binding var street: String
     @Binding var house : String
     @Binding var name : String
      @Binding var phone : String
      @Binding var email : String
     @Binding var password : String
    
    var item : data
    var items : Int
    var selectedsize : String
    var t : Double
  //  var allitems : iteminbag
    var body: some View {
        
        VStack{
             Rectangle()
            .fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
            .frame(width: UIScreen.main.bounds.width , height: 90, alignment: .top)
                .ignoresSafeArea()
            
                Spacer()
        
            VStack (alignment: .center , spacing :40)
        {
            Image(item.pic)
                .resizable()
               // .scaledToFit()
                .frame(width:50, height:100)
               // .padding(.all)
            
            Text("\(items) item ")
               
            Text("  \(selectedsize) size ")
                
            }
            Spacer()
            Spacer()
            Spacer()
            VStack{
            NavigationLink(
                destination: bill(area: $area, block: $block, street: $street, house: $house, name: $name, phone: $phone, email: $email, password: $password, item: item, total: t ),
                label: {
                    HStack{
                    Text("pay ")
                        //.font(.title)
                        .padding()
                        .frame(width: 100, height: 50, alignment:.center)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(8.0)
                       // Spacer()

                    }
                })
            
        }
           Spacer()
            Spacer()
            
            Rectangle()
        .fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
        .ignoresSafeArea()
        .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.width - 350, alignment: .bottom)
    }
}
}
//struct bag_Previews: PreviewProvider {
//    static var previews: some View {
//        bag()
//    }
//}
