//
//  TopMoversItemView.swift
//  crypto-track
//
//  Created by Sebastian on 12/4/23.
//

import Kingfisher
import SwiftUI

struct TopMoversItemView: View {
    var coin: Coin

    var body: some View {
        VStack(alignment: .leading) {
            // image
            KFImage(URL(string: coin.image))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32)
                .padding(.bottom, 4)

            // coin info
            HStack(spacing: 2) {
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)

                Text("\(coin.currentPrice)")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.bottom, 1)

            // coin % change
            Text("\(coin.priceChangePercentage24H >= 0 ? "+" : "")\(coin.priceChangePercentage24H)")
                .font(.title2)
                .foregroundColor(coin.priceChangePercentage24H >= 0 ? .green : .red)
        }
        .padding(.horizontal, 10)
        .frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 1)
        )
    }
}

// struct TopMoversItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversItemView()
//    }
// }
