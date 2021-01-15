//
//  allitem.swift
//  ataeru
//
//  Created by alqattan on 12/01/2021.
//

import SwiftUI

struct allitem: View {
    
    @Binding var area : String
    @Binding var block : String
    @Binding var street: String
     @Binding var house : String
     @Binding var name : String
      @Binding var phone : String
      @Binding var email : String
     @Binding var password : String
    
    var item : [data]
    var gridlayout = [GridItem(.flexible()), GridItem (.flexible())]
        var body:  some View {
        ZStack{
            
            VStack{
                 Rectangle()
                .fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
                .frame(width: UIScreen.main.bounds.width , height: 90, alignment: .top)
                    .ignoresSafeArea()
                    Spacer()
                ScrollView(.vertical , showsIndicators:false){
                    LazyVGrid(columns: gridlayout, spacing: 20){
                        ForEach(item , id : \.self) {
                            oneItem in
                            NavigationLink(
                                destination: itemdetails(area: $area, block: $block, street: $street, house: $house, name: $name, phone: $phone, email: $email, password: $password , item: oneItem  ),
                                label: {
                                    show(d: oneItem)
                        })
                    }
                    }
                }
                
        
                
                Rectangle()
            .fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
            .ignoresSafeArea()
            .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.width - 350, alignment: .bottom)
        
        
            }
        }
      //  .navigationTitle("\(item)")
}
}


//struct allitem_Previews: PreviewProvider {
//    static var previews: some View {
//        
//        allitem(item: clothesdata)
//            .previewDevice("iPhone 12 Pro")
//    }
//}
//
