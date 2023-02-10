//
//  codefliesApp.swift
//  codeflies
//
//  Created by Ayushi Bhatnagar on 10/02/23.
//

import SwiftUI

@main
struct codefliesApp: App {
    var body: some Scene {
        WindowGroup {
            TherapyViewController(viewModel: TherapyViewModel())
        }
    }
}
