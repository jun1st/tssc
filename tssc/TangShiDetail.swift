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
                .multilineTextAlignment(.center)
                .lineLimit(2)
            Text(tangshi.author)
                .font(.subheadline)
                .padding(.top, 2)
            Divider()
            
            ForEach(tangshi.contents.identified(by: \.self)) {
               Text($0)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                    .padding(.top, 3)
            }
            
        }.navigationBarTitle(Text(tangshi.title), displayMode: .inline)
    }
}

#if DEBUG
struct TangShiDetail_Previews : PreviewProvider {
    static var previews: some View {
        TangShiDetail(tangshi: tangshiData[0])
    }
}
#endif
