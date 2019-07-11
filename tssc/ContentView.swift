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
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    VStack(alignment: .center, spacing: 2) {
                        Text("今日推荐")
                            .background(Color.green)
                        Text("今日推荐")
                            .background(Color.red)
                    }
                    .frame(minWidth:0, maxWidth: .infinity, minHeight: 100, maxHeight: 100)
                    .background(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

                    SectionView(title: "十大诗人")
                    SectionView(title: "十大知名诗")
                    SectionView(title: "五言绝句")
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

struct SectionView : View {
    var title: String
    
    var body: some View {
        return VStack() {
            HStack {
                Text(title)
                    .font(.headline)
                    Spacer()
                }
                .padding(.leading)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(top3.identified(by: \.self)) { top in
                            VStack {
                                Text(top)
                            }
                            .frame(width: 80)
                            .frame(height: 100)
                            .border(Color.gray, width: 1, cornerRadius: 8)
                            
                        }
                    }
                    }.padding()
                }
                .padding(.top)
        }
    }
