//
//  TangShiRow.swift
//  tssc
//
//  Created by fengde on 2019/7/8.
//  Copyright © 2019 fengde. All rights reserved.
//

import SwiftUI

struct TangShiRow : View {
    
    var tangshi: TangShi
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(tangshi.title)
                    .font(.headline)
                Text(tangshi.author)
                    .font(.subheadline)
                    .fontWeight(.thin)
                    .color(.black)
                    .padding(.top, 1.0)
            }
            Spacer()
        }
    }
}

#if DEBUG
struct TangShiRow_Previews : PreviewProvider {
    static var previews: some View {
        TangShiRow(tangshi: tangshiData[0])
    }
}
#endif
