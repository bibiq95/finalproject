//
//  allitem.swift
//  ataeru
//
//  Created by alqattan on 12/01/2021.
//

import SwiftUI

struct allitem: View {
    var item : [data]
    //var d : data
    var body:  some View {
        
                List (item){ d in


                            NavigationLink(
                                destination: itemdetails(item: d),
                                label: {
                                    show(d: d)

                    }
                   )}
        
        
        
        
        
        
    }
}

struct allitem_Previews: PreviewProvider {
    static var previews: some View {
        
        allitem(item: clothesdata)
            .previewDevice("iPhone 12 Pro")
    }
}

