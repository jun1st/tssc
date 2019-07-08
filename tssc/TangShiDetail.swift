//
//  TangShiDetail.swift
//  tssc
//
//  Created by fengde on 2019/7/8.
//  Copyright © 2019 fengde. All rights reserved.
//

import SwiftUI

struct TangShiDetail : View {
    var tangshi: TangShi
    
    var body: some View {
        VStack {
            Text(tangshi.title)
                .font(.title)
            Text(tangshi.author)
                .font(.subheadline)
                .padding(.top, 10.0)
            
            ForEach(tangshi.paragraphs.identified(by: \.self)) {
               Text($0)
                   .multilineTextAlignment(.center)
                   .padding()
            }
            
        }
    }
}

#if DEBUG
struct TangShiDetail_Previews : PreviewProvider {
    static var previews: some View {
        TangShiDetail(tangshi: tangshiData[0])
    }
}
#endif
