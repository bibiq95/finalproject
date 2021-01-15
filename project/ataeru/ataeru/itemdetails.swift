//
//  itemdetails.swift
//  ataeru
//
//  Created by alqattan on 12/01/2021.
//

import SwiftUI

struct itemdetails: View {
    
    
    @Binding var area : String
    @Binding var block : String
    @Binding var street: String
     @Binding var house : String
     @Binding var name : String
      @Binding var phone : String
      @Binding var email : String
     @Binding var password : String
    let t :Double = 0.0
    var item : data
   @State var items = 0
   @State var isExpanded = false
   @State  var selectedsize = ""
 
    
    var body: some View {
        
        
        ZStack{
            
            VStack{
                 Rectangle()
                .fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
                .frame(width: UIScreen.main.bounds.width  , height: 90, alignment: .top)
                    .ignoresSafeArea()
          .padding()
//                VStack(alignment: .trailing , spacing:20) {
//                    HStack{
//                        Spacer()
//                    NavigationLink(
//                        destination: bag(area: $area, block: $block, street: $street, house: $house, name: $name, phone: $phone, email: $email, password: $password ,item: item, items: items, selectedsize: selectedsize, t: t),
//                        label: {
//                    Image(systemName: "bag")
//                })
//                        .padding()
//                   } }
                // picture
                VStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing:10 ){
            Image(item.pic)
                .resizable()
            .scaledToFit()
            .frame(width: 200, height:200)
            .padding()
            }
        VStack(alignment: .leading, spacing: 20) {
            // dropdown
            Text(" select the size")
                .font(.title3)
            DisclosureGroup ("\(selectedsize)", isExpanded: $isExpanded){
            VStack{
                ForEach(allsize,id : \.self) { num in
                    Text("\(num)")
                        .font(.title3)
                        .padding(.all)
                        .onTapGesture {
                            self.selectedsize = num
                            withAnimation{
                            self.isExpanded.toggle()
                            }
                        }

                }
            }
            }
            .accentColor(.white)
            .font(.title2)
            .foregroundColor(.white)
            .background(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
           .cornerRadius(8)
            .padding(.bottom)
          
        HStack{
            Spacer()
            Stepper(" \(items) number of item ", value:$items, in:0...50)
        }
        .padding()
        // stepper
        .padding()
          let t = Double(Double(items) * item.price)
                
            Text("\(t ,specifier: "%.2f") K.D ")
                .padding()
            Spacer()
             //Go to bag
           
            if Int(items)>0
            {
                HStack{
                    Spacer()
                    NavigationLink(
                destination: bag(area: $area, block: $block, street: $street, house: $house, name: $name, phone: $phone, email: $email, password: $password ,item: item, items: items, selectedsize: selectedsize, t: t),

                     label: {
                        Spacer()

                        Text("Add to bag")
                            
                            //.font(.title)
                            .frame(width: 150, height: 50, alignment:.center)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(8.0)
            Spacer()
        //             Button(action: {
            //              var allitems = iteminbag(item: item, items: items, selectedsize: selectedsize) }
                    })
                        
                }
            }
            
        }
        
        
            Rectangle()
        .fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
        .ignoresSafeArea()
        .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.width - 300, alignment: .bottom)
        }
            }
    }
    }


//struct itemdetails_Previews: PreviewProvider {
//    static var previews: some View {
//        itemdetails(item: clothesdata[0] )
//    }
//}
