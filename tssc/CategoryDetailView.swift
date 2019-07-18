//
//  CategoryDetailView.swift
//  tssc
//
//  Created by fengde on 2019/7/17.
//  Copyright © 2019 fengde. All rights reserved.
//

import SwiftUI

struct CategoryDetailView : View {
    var category: Category
    
    var body: some View {
        Form {
            Section(header: Text("起源")) {
                Text(category.time)
                    .font(.subheadline)
                    .padding()
            }
            Section(header: Text("介绍")) {
                Text(category.summary)
                    .lineLimit(nil)
                    .padding()
            }
        }
        .navigationBarTitle(Text(category.name), displayMode: .inline)
    }
}

#if DEBUG
struct CategoryDetailView_Previews : PreviewProvider {
    static var previews: some View {
        CategoryDetailView(category: categories[0])
    }
}
#endif
