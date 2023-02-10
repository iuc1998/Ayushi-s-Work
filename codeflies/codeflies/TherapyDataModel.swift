//
//  TherapyDataModel.swift
//  codeflies
//
//  Created by Ayushi Bhatnagar on 10/02/23.
//

import Foundation

struct Therapy : Codable {
    var status: Int
    var success: Bool
    var message: String
    var token: String
    var data : [TherapyInfo]
    
    enum Keys : String, CodingKey {
        case status
        case success
        case message
        case token
        case data
    }
}

struct TherapyInfo: Codable, Identifiable {
    var id: Int
    var name: String
    var image_nm: String
    var image_path: String
    var profile: String
    var status: String
    var created_at: String
    var updated_at: String
    
    enum Keys : String, CodingKey {
        case id
        case name
        case image_nm
        case image_path
        case profile
        case status
        case created_at
        case updated_at
    }
}
