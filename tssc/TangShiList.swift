//
//  TangShiList.swift
//  tssc
//
//  Created by feng qijun on 2019/7/11.
//  Copyright © 2019 fengde. All rights reserved.
//

import SwiftUI

struct TangShiList : View {
    
    var tangshis: [TangShi];
    
    var body: some View {
        
        List(tangshis.identified(by: \.id)) {item in
            TangShiRow(tangshi: item)
        }
        .navigationBarHidden(true)
        
    }
}

#if DEBUG
struct TangShiList_Previews : PreviewProvider {
    static var previews: some View {
        TangShiList(tangshis: tangshiData)
    }
}
#endif
