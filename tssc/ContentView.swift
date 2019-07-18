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
                    Image("Banner")
                        .resizable()
                        .frame(minWidth:0, maxWidth: .infinity, minHeight: 100, maxHeight: 120)
                        
                        .aspectRatio(contentMode: ContentMode.fit)
                        .cornerRadius(10)
                        .padding(.all)

                    AuthorView(title: "十大诗人")
                    
                    TypeView(title: "分类")
                    
                    HStack {
                        Text("分类")
                            .font(.title)
                            .fontWeight(.heavy)
                        Spacer()
                    }.padding()
                    
                    NavigationLink(destination: TangShiList(title: "五言绝句", tangshis: wuyanJueJu)) {
                        VStack {
                            Text("[五言绝句]")
                                .font(.headline)
                                .color(Color(red: 48/255, green: 120/255, blue: 175/255))
                        }
                        .frame(minWidth:0, maxWidth: .infinity, minHeight: 100, maxHeight: 100)
                            .background(Color(red: 209/255, green: 247/255, blue: 209/255))
                            .cornerRadius(10)
                            .padding([.leading, .trailing])
                    }
                    
                    NavigationLink(destination: TangShiList(title: "七言绝句", tangshis: qiyan)) {
                        VStack {
                            Text("[七言绝句]")
                                .font(.headline)
                                .color(Color(red: 48/255, green: 120/255, blue: 175/255))
                        }
                        .frame(minWidth:0, maxWidth: .infinity, minHeight: 100, maxHeight: 100)
                            .background(Color(red: 177/255, green: 230/255, blue: 230/255))
                            .cornerRadius(10)
                            .padding([.leading, .trailing])
                    }
                    
                }
            }.navigationBarTitle(Text("唐诗三百首"))
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

struct AuthorView : View {
    var title: String
    
    var body: some View {
        return VStack() {
            HStack {
                Text(title)
                    .font(.title)
                    .fontWeight(.heavy)
                    Spacer()
            }
            .padding(.leading)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(authors.identified(by: \.name)) { author in
                        NavigationLink(destination: AuthorDetail(author: author)) {
                            VStack {
                                Text(author.name)
                                .color(Color.black)
                            }
                            .frame(width: 90)
                            .frame(height: 120)
                            .background(Color(red: author.red()/255.0, green: author.green()/255, blue: author.blue()/255))
                            .shadow(radius: 10)
                            .cornerRadius(10)
                            
                        }
                    }
                }
            }.padding()
        }
        .padding(.top)
    }
    
    func tangshisOf(name: String) -> [TangShi] {
        return tangshiData.filter { $0.author == name }
    }
}

struct TypeView : View {
    var title: String
    
    var body: some View {
        return VStack() {
            HStack {
                Text(title)
                    .font(.title)
                    .fontWeight(.heavy)
                Spacer()
            }
            .padding(.leading)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(categories.identified(by: \.name)) { category in
                        NavigationLink(destination: CategoryDetailView(category: category)) {
                            VStack {
                                Text(category.name)
                                    .color(Color.gray)
                            }
                            .frame(width: 90)
                                .frame(height: 120)
                                .background(Color(red: 241/255, green: 220/255, blue: 205/255))
                                .shadow(radius: 10)
                                .cornerRadius(10)
                            
                        }
                    }
                }
            }.padding()
        }
        .padding(.top)
    }
    
    func tangshisOf(name: String) -> [TangShi] {
        return tangshiData.filter { $0.author == name }
    }
}

