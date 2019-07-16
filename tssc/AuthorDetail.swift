//
//  AuthorDetail.swift
//  tssc
//
//  Created by feng qijun on 2019/7/16.
//  Copyright © 2019 fengde. All rights reserved.
//

import SwiftUI

struct AuthorDetail : View {
    var author: Author
    var body: some View {
        VStack {
            Text(author.name)
                .font(.title)
            Text(author.nickname)
                .font(.subheadline)
                .color(Color.gray)
            
            Text(author.summary)
                .lineLimit(nil)
                .padding()
            Divider()
            NavigationLink(destination: WebView(urlString: author.baikeUrl)) {
                Text("百度百科")
            }
            Spacer()
        }.navigationBarTitle(Text(author.name), displayMode: .inline)
    }
}

#if DEBUG
struct AuthorDetail_Previews : PreviewProvider {
    static var previews: some View {
        AuthorDetail(author: authors[0])
    }
}
#endif
