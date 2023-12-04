//
//  AllCoinsView.swift
//  crypto-track
//
//  Created by Sebastian on 12/4/23.
//

import SwiftUI

struct AllCoinsView: View {
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
                    ForEach(0 ..< 50, id: \.self) { _ in
                        CoinRowView()
                    }
                }
            }
        }
    }
}

struct AllCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinsView()
    }
}
