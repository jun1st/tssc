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
                    .font(.title)
                Text(tangshi.author)
                    .font(.body)
                    .color(.gray)
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
