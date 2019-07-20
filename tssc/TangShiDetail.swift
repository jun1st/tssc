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
                .lineLimit(nil)
                .multilineTextAlignment(.center)
                .padding(10)
            
            Text(tangshi.author)
                .font(.headline)
                .padding(.top, 2)
            
            Divider()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach(tangshi.contents.identified(by: \.self)) {
                        Text($0)
                            .font(Font.custom("Source Han Serif CN", size: 22))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                            .padding(.top, 3)
                    }
                }
            }
        }.navigationBarTitle(Text("正文"), displayMode: .inline)
    }
}

#if DEBUG
struct TangShiDetail_Previews : PreviewProvider {
    static var previews: some View {
        TangShiDetail(tangshi: tangshiData[49])
    }
}
#endif
