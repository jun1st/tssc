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
            Form {
                Section(header: Text("字")) {
                    Text(author.nickname)
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                        .padding()
                }
                
                Section(header: Text("简介")) {
                    Text(author.summary)
                        .lineLimit(nil)
                        .padding()
                }
                
//                Section(header: Text("相关链接")) {
                    
//                    PresentationLink(destination: WebView(urlString: author.baikeUrl)) {
//                        Text("百度百科")
//                            .foregroundColor(Color.blue)
//                    }
//                }
                
            }
            
        }
        .navigationBarTitle(Text(author.name), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                print("clicked")
            }) {
                Text("作品")
                    .foregroundColor(Color.blue)
            })
    }
}

#if DEBUG
struct AuthorDetail_Previews : PreviewProvider {
    static var previews: some View {
        AuthorDetail(author: authors[0])
    }
}
#endif
