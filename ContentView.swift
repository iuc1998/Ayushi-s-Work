//
//  ContentView.swift
//  Shared
//
//  Created by Ayushi Bhatnagar on 30/04/22.
//

import SwiftUI

struct ContentView: View {
    @State var toggle = true
    
    var body: some View {
        VStack{
            Spacer()
            ZStack(alignment: .leading){
                HStack{
                    Toggle(isOn: $toggle){
                    }.labelsHidden().padding([.leading], 20)
                    Spacer()
                }.frame(maxWidth: .infinity)
                Text(AppConstansts.kOn).font(.system(size: 12)).padding([.leading], 23)
                    .foregroundColor(.white)
            }.padding([.bottom],3)
            Spacer()
            VStack{
                Image("").frame(width: 100, height: 100, alignment: .center).background(.black).padding(EdgeInsets(top: 20, leading: 166, bottom: 0, trailing: 166))
                Text(AppConstansts.kAshish).foregroundColor(.black).padding([.bottom], 2)
                Text(AppConstansts.kMobile).foregroundColor(.blue).underline()
                HStack{
                    Spacer()
                    Text(AppConstansts.kNum).foregroundColor(.blue).underline().italic().padding(10)
                }
            }.background(Color(red: 0.80, green: 0.94, blue: 1.0)).edgesIgnoringSafeArea(.all)
            List{
                Button(action: {
                }, label: {
                    HStack{
                        Image("").frame(width: 30, height: 30, alignment: .leading).background(.yellow)
                        Text(AppConstansts.kOrder)
                        Spacer()
                        Text(AppConstansts.kOnum).frame(width: 30, height: 30, alignment: .center).foregroundColor(.white).background(.green).cornerRadius(5)
                    }.padding(EdgeInsets(top: 10, leading: 0, bottom: 5, trailing: 0))
                }).buttonStyle(PlainButtonStyle())
                
                Button(action: {
                }, label: {
                    HStack{
                        Image("").frame(width: 30, height: 30, alignment: .leading).background(.yellow)
                        Text(AppConstansts.kRoute)
                    }.padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                }).buttonStyle(PlainButtonStyle())
                
                Button(action:{
                }, label: {
                    HStack{
                        Image("").frame(width: 30, height: 30, alignment: .leading).background(.yellow)
                        Text(AppConstansts.kHistory)
                    }.padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                }).buttonStyle(PlainButtonStyle())
                
                Button(action: {
                }, label: {
                    HStack{
                        Image("").frame(width: 30, height: 30, alignment: .leading).background(.yellow)
                        Text(AppConstansts.kAttendance)
                    }.padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                }).buttonStyle(PlainButtonStyle())
                
                Button(action: {
                }, label: {
                    HStack{
                        Image("").frame(width: 30, height: 30, alignment: .leading).background(.yellow)
                        Text(AppConstansts.kCash)
                    }.padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                }).buttonStyle(PlainButtonStyle())
                
                Button(action: {
                }, label: {
                    HStack{
                        Image("").frame(width: 30, height: 30, alignment: .leading).background(.yellow)
                        Text(AppConstansts.kDis)
                    }.padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                }).buttonStyle(PlainButtonStyle())
                
                Button(action: {
                }, label: {
                    HStack{
                        Image("").frame(width: 30, height: 30, alignment: .leading).background(.yellow)
                        Text(AppConstansts.kGeo)
                    }.padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                }).buttonStyle(PlainButtonStyle())
                
                Button(action: {
                }, label: {
                    HStack{
                        Image("").frame(width: 30, height: 30, alignment: .leading).background(.yellow)
                        Text(AppConstansts.kRos)
                    }.padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                }).buttonStyle(PlainButtonStyle())
                
                Button(action: {
                }, label: {
                    HStack{
                        Image("").frame(width: 30, height: 30, alignment: .leading).background(.yellow)
                        Text(AppConstansts.kRow9)
                    }.padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                }).buttonStyle(PlainButtonStyle())
                
                Button(action: {
                }, label: {
                    HStack{
                        Image("").frame(width: 30, height: 30, alignment: .leading).background(.yellow)
                        Text(AppConstansts.kRow10)
                    }.padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                }).buttonStyle(PlainButtonStyle())
                
            }.listStyle(PlainListStyle())
                .onAppear{
                    UITableView.appearance().backgroundColor = .clear
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
