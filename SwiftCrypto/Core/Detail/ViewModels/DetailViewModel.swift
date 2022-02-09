//
//  DetailViewModel.swift
//  SwiftCrypto
//
//  Created by 668 on 05.02.2022.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    let coin: CoinModel
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coin = coin
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        
        coinDetailService.$coinDetails
            .sink { (returnedCoinsDetails) in
                print("RECIEVED COIN DETAIL DATA")
                print(returnedCoinsDetails)
            }
            .store(in: &cancellables)
        
    }
}
