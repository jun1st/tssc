//
//  ContentView.swift
//  tssc
//
//  Created by fengde on 2019/7/4.
//  Copyright © 2019 fengde. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView {
            List(tangshiData.identified(by: \.id)) { item in
                NavigationLink(destination: TangShiDetail(tangshi: item)) {
                    TangShiRow(tangshi: item)
                }
            }
            .navigationBarTitle(Text("唐诗三百首"))
        }
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
