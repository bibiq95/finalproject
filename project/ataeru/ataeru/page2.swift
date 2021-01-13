//
//  page2.swift
//  ataeru
//
//  Created by alqattan on 12/01/2021.
//
//
//import SwiftUI
//
//struct page2: View {
//    @State  var isExpanded = false
//    @State  var selectedsize = ""
//        @State var item : Int = 0
//        @State var size : String = ""
//        @State var total = 0
//        //var d:info
//        var body: some View {
//            
//            
//            
//            VStack{
//                Image(systemName:"bag")
//                    // on top right side
////                Image(d.type)
////                    .resizable()
////                .scaledToFit()
////                .frame(width: 250, height:250)
////                .padding()
//                
//                    
//                  //  Stepper("  \(size)  select the size ", value: $size,in:0...50)
//                    // select the size by using table
//                        .padding()
//                    
////                }
////                Spacer()
////
////                HStack{
////
////                    Stepper(" \(item) number of item ", value:$item, in:0...50)
////                        .padding()
////                }
////
//////
////                VStack {
////
////                    let t = Double(Double(item) * price))
////                    Spacer()
////                    Text("\(t ,specifier: "%.2f") K.D ")
////                        .padding()
////                    Text("Total amount ")
////                    .font(.system(size: 30))
////                        .multilineTextAlignment(.center)
////                        .padding(.leading)
////                    Spacer()
//
//                    // add to bag
//
////
////                    if Int(items)>0
////                    {
////                        NavigationLink(
////                           destination: bag(d: details(name: name, phone: phone, email: email, adress: adress , total:t)),
////                            label: {
////                                Text("Add to bag")
////                                    .font(.largeTitle)
////                                    .frame(width: 250, height: 100, alignment:.center)
////                                    .foregroundColor(.white)
////                                    .background(Color.blue)
////                                    .cornerRadius(8.0)
////                                    .padding()
//                            })
//
//
//                    }
//
//                }
//                
//                
//            }
//    }
//    
//
//
//struct page2_Previews: PreviewProvider {
//    static var previews: some View {
//        page2()
//    }
//}
