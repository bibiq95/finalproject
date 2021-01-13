//
//  itemdetails.swift
//  ataeru
//
//  Created by alqattan on 12/01/2021.
//

import SwiftUI

struct itemdetails: View {
    var item : data
   @State var items = 0
   @State var isExpanded = false
   @State  var selectedsize = ""
 
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15)  {
            
            
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
            .background(Color.blue)
           .cornerRadius(8)
            Spacer ()
          
        HStack{
            
            Stepper(" \(items) number of item ", value:$items, in:0...50)
                .padding()
        }
        // stepper
            let t = Double(Double(items) * item.price)
            Spacer()
            Text("\(t ,specifier: "%.2f") K.D ")
                .padding()
            Text("Total amount ")
            .font(.system(size: 30))
                .multilineTextAlignment(.center)
                .padding(.leading)
            Spacer()
            
             //Go to bag
            
            if Int(items)>0
            {
                NavigationLink(
                    destination: bag( adress: [""]),
                    label: {
                        Text("Add to bag")
                            .font(.largeTitle)
                            .frame(width: 250, height: 100, alignment:.center)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(8.0)
                            .padding()
                    })


            }
            
        }.padding(.all)
        
        
        
    }
}

struct itemdetails_Previews: PreviewProvider {
    static var previews: some View {
        itemdetails(item: clothesdata[0] )
    }
}
