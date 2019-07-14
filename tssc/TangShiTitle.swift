//
//  TangShiTitle.swift
//  tssc
//
//  Created by feng qijun on 2019/7/14.
//  Copyright © 2019 fengde. All rights reserved.
//

import SwiftUI

struct TangShiTitle : View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title)
            .lineLimit(nil)
    }
}

#if DEBUG
struct TangShiTitle_Previews : PreviewProvider {
    static var previews: some View {
        TangShiTitle(title: "This is a very wrong title, very very wrong title")
    }
}
#endif
