//
//  ContentView.swift
//  aaa
//
//  Created by Ayushi Bhatnagar on 03/02/23.
//

import SwiftUI

struct ContentView: View {
    @State var num : String = ""
    @State var otp : String = ""
    var body: some View {
        NavigationView {
            VStack{
                VStack{
                    TextField("Enter your number", text: $num)
                        .frame(height: UIScreen.main.bounds.height * 0.05)
                        .padding(.leading, 10)
                        .background(Color(red: 0.95, green: 0.95, blue: 0.95)).cornerRadius(15)
                        .padding([.vertical], 20)
                    
                    TextField("Enter the OTP", text: $otp)
                        .frame(height: UIScreen.main.bounds.height * 0.05)
                        .padding(.leading, 10)
                        .background(Color(red: 0.95, green: 0.95, blue: 0.95)).cornerRadius(15)
                    Spacer()
                }.padding()
                    .navigationBarTitle("LOGIN")
                
                NavigationLink(destination: CityVC(), label: {
                    Text("Proceed").bold()
                        .font(.system(size: 20))
                        .frame(width: 150, height: 50)
                        .foregroundColor(.black)
                        .background(Color.green)
                        .cornerRadius(30)
                })
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
