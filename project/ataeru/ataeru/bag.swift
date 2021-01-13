//
//  bag.swift
//  ataeru
//
//  Created by alqattan on 12/01/2021.
//

import SwiftUI

struct bag: View {
   
    @State var buttoncolor: Color = .blue
    @State var btntxt = " pay now "
    var name : String = ""
    var phone : String = ""
    var adress : [String]
    var total : Double = 0.0
            var body: some View {
                VStack{
                    Spacer()
                    HStack{
                        

                    Text("name")
                        Spacer()
                        Text("\(name)")

                    }
                    
                  
                    
                    HStack{
                    Text("adress")
                        
                        Spacer()
                     //   Text("\(adress)")
                        
                    }
                    
                    HStack{


                    Text("phone number")
                        Spacer()
                        Text ("\(phone)")
                            

                    }

                    HStack{


                    Text("Total")
                        Spacer()
                        Text("\(total)")
                    }
                   Spacer()
                    
                  
                    Button(action: {
                        self.btntxt="Paid"
                        self.buttoncolor=Color.green
                    }, label: {
                        Text(btntxt)
                       .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding()
                      .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(buttoncolor)
                        .cornerRadius(8.0)
                        .padding()
                    })

                    .navigationTitle("your bag")
                }
                .padding()
            }
        }
    

struct bag_Previews: PreviewProvider {
    static var previews: some View {
        bag( adress: [""])
    }
}
