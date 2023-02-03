//
//  CityVC.swift
//  aaa
//
//  Created by Ayushi Bhatnagar on 03/02/23.
//

import SwiftUI
import CoreLocation

struct CityVC: View {
    @State var cityName : String = ""
    @State var selectedCity: City? = nil
    let cities : [City] = [City (name: "Noida", location: CLLocationCoordinate2D(latitude: 20.380, longitude: 20.8837)),
                           City(name: "Ghaziabad", location: CLLocationCoordinate2D(latitude: 30.237878, longitude: 30.23682)),
                           City(name: "Delhi", location: CLLocationCoordinate2D(latitude: 40.82837, longitude: 40.23728)),
                           City(name: "Pune", location: CLLocationCoordinate2D(latitude: 50.263572, longitude: 50.2276)),
                           City(name: "Gurugram", location: CLLocationCoordinate2D(latitude: 60.736527, longitude: 60.23782))
    ]
    var body: some View {
        NavigationView {
            VStack{
                TextField("Enter your city", text: $cityName)
                    .frame(height: UIScreen.main.bounds.height * 0.05)
                    .padding(.leading, 10)
                    .background(Color(red: 0.95, green: 0.95, blue: 0.95)).cornerRadius(15)
                
                if selectedCity != nil {
                    MapView(city: selectedCity!)
                        .frame(height: 300)
                }
                
                List(cities.sorted { $0.name < $1.name}.filter {
                    self.cityName.isEmpty ? true : $0.name.localizedCaseInsensitiveContains(self.cityName)
                }, id: \.name) { city in
                    Button(action: {
                        self.selectedCity = city
                    }) {
                        Text(city.name)
                    }
                }
                
            }.padding()
                .navigationTitle("Which city you live in ?")
        }
    }
}

struct MapView: View {
    var city: City
    var body: some View {
        MapKitView(coordinate: city.location)
            .overlay(
                Circle().fill(Color.red)
                    .scaleEffect(0.1)
                    .frame(width: 20, height: 20)
            )
            .overlay(
                Text(city.name)
                    .font(.system(size: 10))
            )
    }
}

struct CityVC_Previews: PreviewProvider {
    static var previews: some View {
        CityVC()
    }
}
