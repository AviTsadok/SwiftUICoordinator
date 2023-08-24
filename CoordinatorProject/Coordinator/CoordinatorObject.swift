//
//  CoordinatorObject.swift
//  CoordinatorProject
//
//  Created by Avi Tsadok on 17/08/2023.
//

import Foundation
import SwiftUI
import Combine

class CoordinatorObject: ObservableObject {
    @Published var mainListViewModel : MainListViewModel!
    @Published var isDetailsScreen1Presented: Bool = false
    @Published var isDetailsScreen2Presented: Bool = false
    
    private var anyCancellables: Set<AnyCancellable> = []
    
    init() {
        mainListViewModel = MainListViewModel()
        mainListViewModel.tappedFirstRowPublisher.sink {[unowned self] _ in
            self.isDetailsScreen1Presented = true
        }
        .store(in: &anyCancellables)
        
        mainListViewModel.tappedSecondRowPublisher.sink {[unowned self] _ in
            self.isDetailsScreen2Presented = true
        }
        .store(in: &anyCancellables)
     
    }

}
