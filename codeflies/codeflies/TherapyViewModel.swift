//
//  TherapyViewModel.swift
//  codeflies
//
//  Created by Ayushi Bhatnagar on 10/02/23.
//

import Foundation

class TherapyViewModel: ObservableObject {
    @Published var therapies : [TherapyInfo]? = [TherapyInfo]()
    func fetchAll() {
        guard let url = URL(string: "https://mindmyscape.localserverpro.com/api/doctor/therapies") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return
            }
            let therapy = try? JSONDecoder().decode(Therapy.self, from: data)
            
            if let therapy = therapy {
                DispatchQueue.main.async {
                    self.therapies = therapy.data
                }
            }
        }
        .resume()
    }
}
