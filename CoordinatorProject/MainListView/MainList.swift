//
//  MainListView.swift
//  CoordinatorProject
//
//  Created by Avi Tsadok on 17/08/2023.
//

import SwiftUI

struct MainList: View {
    @ObservedObject var viewModel: MainListViewModel
    
    var body: some View {
        VStack {
            Button("Go to view 1") {
                viewModel.item1Tapped()
            }
            Button("Go to view 2") {
                viewModel.item2Tapped()
            }            
        }
    }
}
