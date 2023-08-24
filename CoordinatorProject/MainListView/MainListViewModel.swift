//
//  MainListViewModel.swift
//  CoordinatorProject
//
//  Created by Avi Tsadok on 17/08/2023.
//

import Foundation
import Combine

class MainListViewModel: ObservableObject {
     
    let tappedFirstRowPublisher = PassthroughSubject<Void, Never>()
    let tappedSecondRowPublisher = PassthroughSubject<Void, Never>()

    func item1Tapped() {
        tappedFirstRowPublisher.send()
    }
    
    func item2Tapped() {
        tappedSecondRowPublisher.send()
    }
}
