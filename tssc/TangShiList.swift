//
//  TangShiList.swift
//  tssc
//
//  Created by feng qijun on 2019/7/11.
//  Copyright © 2019 fengde. All rights reserved.
//

import SwiftUI

struct TangShiList : View {
    
    var title: String
    var tangshis: [TangShi];
    
    var body: some View {
        
        List(self.tangshis) { item in
            NavigationLink(destination: TangShiDetail(tangshi: item)) {
                TangShiRow(tangshi: item)
            }
        }.navigationBarTitle(Text(title), displayMode: .inline)
    }
}

#if DEBUG
struct TangShiList_Previews : PreviewProvider {
    static var previews: some View {
        TangShiList(title: "李白", tangshis: tangshiData)
    }
}
#endif
