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
                .padding(.horizontal)

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
        }
    }
}

struct AllCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinsView()
    }
}
