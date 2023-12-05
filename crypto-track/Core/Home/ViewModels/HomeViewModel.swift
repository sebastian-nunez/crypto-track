//
//  HomeViewModel.swift
//  crypto-track
//
//  Created by Sebastian on 12/4/23.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    static let FETCH_ALL_COIN_INFO_URL = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h&locale=en&precision=2&api_key=CG-m829evJneyQyubEVmPCSLyv2" // TODO: please don't take my API key :/

    @Published var coins = [Coin]()

    init() {
        fetchCoinData()
    }

    func fetchCoinData() {
        guard let url = URL(string: Self.FETCH_ALL_COIN_INFO_URL) else {
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            // handle error
            if let error = error {
                print("DEBUG: Error fetching coin data \(error.localizedDescription)")
                return
            }

            // check the response status
            if let response = response as? HTTPURLResponse {
                print("DEBUG: Response code \(response.statusCode)")
            }

            // extract the data
            guard let data = data else {
                print("DEBUG: No coin data was retrived")
                return
            }

            // parse the data as JSON
            do {
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                print("DEBUG: Coins \(coins)")

                self.coins = coins
            } catch {
                print("DEBUG: Failed to decode coins \(error)")
            }

        }.resume()
    }
}
