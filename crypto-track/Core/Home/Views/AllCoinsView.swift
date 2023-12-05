//
//  AllCoinsView.swift
//  crypto-track
//
//  Created by Sebastian on 12/4/23.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel: HomeViewModel

    var body: some View {
        VStack(alignment: .leading) {
            // title
            Text("All Coins")
                .font(.headline)
                .padding()

            // labels
            HStack {
                Text("Coin")

                Spacer()

                Text("Price")
            }
            .font(.caption)
            .foregroundColor(.gray)
            .padding(.horizontal)

            // item rows
            ScrollView(.vertical) {
                VStack {
                    ForEach(viewModel.coins) { coin in
                        CoinRowView(coin: coin)
                    }
                }
            }
        }
    }
}

struct AllCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinsView(viewModel: HomeViewModel())
    }
}
