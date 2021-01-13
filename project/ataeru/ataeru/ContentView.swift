//
//  ContentView.swift
//  ataeru
//
//  Created by alqattan on 12/01/2021.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        NavigationView{
        VStack {
            HStack
            {
                
                    
                
                NavigationLink(
                    destination: allitem(item: clothesdata),
                    label: {
                        VStack{
                        Image(systemName: "bag")
                        Text(" clothes ")
                        }
        }
       )
                
                
                
                
                
                
                
                
                NavigationLink(
                    destination: allitem(item: basketdata),
                    label: {
                        VStack{
                            Image(systemName: "bag")
                            Text(" basket  ")
                        
                        }
        }
       )
                
                
                
            }
          


        }
        
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}

struct show: View {

  var d :data
    var body: some View {
        
        
        
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            
//            Text("\(d.pic)")
//                .font(.system(size: 30))
//            .padding()
//                .background(Color.blue)
//                .clipShape(Circle())
//                .frame(width:100 , height:100)
//            Spacer()
//            Spacer()
            VStack (alignment: .leading)
            {
                Image(d.pic)
                    .resizable()
                    .scaledToFit()
                    .frame(width:40, height:40)
                    .padding()
            }
            Spacer()
            Spacer()
            Spacer()
        
  
        }
        
      
     
}
}

