//
//  CoinRowView.swift
//  crypto-track
//
//  Created by Sebastian on 12/4/23.
//

import Kingfisher
import SwiftUI

struct CoinRowView: View {
    let coin: Coin

    var body: some View {
        HStack {
            // market cap rank
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundColor(.gray)

            // image
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)

            // coin name info
            VStack(alignment: .leading, spacing: 4) {
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)

                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)

            Spacer()

            // coin price info
            VStack(alignment: .trailing, spacing: 4) {
                Text("\(coin.currentPrice)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)

                Text("\(coin.priceChangePercentage24H >= 0 ? "+" : "")\(coin.priceChangePercentage24H)")
                    .font(.callout)
                    .foregroundColor(coin.priceChangePercentage24H >= 0 ? .green : .red)
                    .padding(.leading, 6)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

// struct CoinRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoinRowView()
//    }
// }
