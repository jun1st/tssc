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
                            .font(.title)
                            .color(Color.white)
                    }
                    .frame(minWidth:0, maxWidth: .infinity, minHeight: 100, maxHeight: 100)
                        .background(Color(red: 60/255, green: 112/255, blue: 174/255))
                    .cornerRadius(10)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

                    SectionView(title: "十大诗人")
                }
                
                
                HStack {
                    Text("分类")
                        .font(.headline)
                        .fontWeight(.heavy)
                    Spacer()
                }.padding()
                
                
                NavigationLink(destination: TangShiList(tangshis: wuyanJueJu)) {
                    VStack {
                        Text("五言绝句")
                            .font(.headline)
                            .color(Color.white)
                    }
                    .frame(minWidth:0, maxWidth: .infinity, minHeight: 100, maxHeight: 100)
                        .background(Color.gray)
                        .cornerRadius(10)
                        .padding([.leading, .trailing])
                }
                
                NavigationLink(destination: TangShiList(tangshis: qiyan)) {
                    VStack {
                        Text("七言绝句")
                            .font(.headline)
                            .color(Color.white)
                    }
                    .frame(minWidth:0, maxWidth: .infinity, minHeight: 100, maxHeight: 100)
                        .background(Color.gray)
                        .cornerRadius(10)
                        .padding([.leading, .trailing])
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
                    .fontWeight(.heavy)
                    Spacer()
                }
                .padding(.leading)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(top3.identified(by: \.self)) { top in
                            NavigationLink(destination: TangShiList(tangshis: tangshiData.filter { $0.author == top })) {
                                VStack {
                                    Text(top)
                                }
                                .frame(width: 90)
                                .frame(height: 120)
                                .background(Color(red: 242/255, green: 228/255, blue: 221/255))
                                .shadow(radius: 10)
                                .cornerRadius(10)
                                
                            }
                        }
                    }
                    }.padding()
                }
                .padding(.top)
        }
    }
