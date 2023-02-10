//
//  ContentView.swift
//  codeflies
//
//  Created by Ayushi Bhatnagar on 10/02/23.
//

import SwiftUI

struct TherapyViewController: View {
    @ObservedObject var viewModel: TherapyViewModel
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    var body: some View {
        
        NavigationView {
            VStack{
                Color(red: 0.23, green: 0.63, blue: 0.44)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.18)
                    .padding(.top, -100)
                Text("Select the therapy")
                    .frame(alignment: .center)
                    .padding(5)
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(viewModel.therapies ?? [TherapyInfo](), id: \.id) { therapy in
                            ZStack{
                                Image(systemName: therapy.image_nm)
                                    .data(url: URL(string: therapy.profile)!)
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(20)
                                
                                VStack{
                                    Spacer()
                                    Text(therapy.name)
                                        .foregroundColor(.white)
                                        .font(.system(size: 15))
                                }
                            }
                        }
                    }
                }.padding(.bottom, 20)
     
                    HStack(spacing: 45){
                        Image(systemName: "house")
                        Image(systemName: "calendar")
                        Image(systemName: "magnifyingglass")
                        Image(systemName: "clipboard")
                        Image(systemName: "person")
                    }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.05).font(.system(size: 28))
                        .background(Color(red: 0.23, green: 0.63, blue: 0.44))
                        .foregroundColor(.white)
                
            }.toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack(spacing: 15){
                        Button(action: {}, label: {
                            Image(systemName: "arrow.left")
                                .foregroundColor(.white)
                        }).buttonStyle(.plain)
                            .font(.system(size: 18))
                        
                        Button(action: {}, label: {
                            Image(systemName: "line.3.horizontal")
                                .foregroundColor(.white)
                        }).buttonStyle(.plain)
                            .font(.system(size: 25))
                        
                        
                        Image(systemName: "brain.head.profile")
                            .foregroundColor(.yellow)
                            .padding(.leading, 50)
                            .font(.system(size: 50))
                    }.padding(.top, 20)
                }
                
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}, label: {
                        Image(systemName: "person.crop.circle.badge")
                            .foregroundColor(.white)
                            .font(.system(size: 35))
                            .padding(.top, 20)
                    }).buttonStyle(.plain)
                }
            }
        }
        .onAppear{
            viewModel.fetchAll()
        }
    }
}

extension Image {
    func data(url:URL) -> Self {
        if let data = try? Data(contentsOf: url) {
            return Image(uiImage: UIImage(data: data)!)
                .resizable()
        }
        return self
            .resizable()
    }
}

struct TherapyViewController_Previews: PreviewProvider {
    static var previews: some View {
        TherapyViewController(viewModel: TherapyViewModel())
    }
}
