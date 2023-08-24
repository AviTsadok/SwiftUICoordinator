//
//  CoordinatorProjectApp.swift
//  CoordinatorProject
//
//  Created by Avi Tsadok on 17/08/2023.
//

import SwiftUI

@main
struct CoordinatorProjectApp: App {
    var body: some Scene {
        WindowGroup {
            MainAppFlowCoordinator(object: CoordinatorObject())
        }
    }
}
