//
//  CoordinatorView.swift
//  CoordinatorProject
//
//  Created by Avi Tsadok on 17/08/2023.
//

import SwiftUI

struct MainAppFlowCoordinator: View {
    
    @ObservedObject var object: CoordinatorObject
    
    var body: some View {
        
        NavigationView {
            VStack {
                MainList(viewModel: object.mainListViewModel)
                NavigationLink("", destination: DetailScreen(), isActive: $object.isDetailsScreen1Presented)
                NavigationLink("", destination: DetailScreen2(), isActive: $object.isDetailsScreen2Presented)
            }
        }
    }
}
