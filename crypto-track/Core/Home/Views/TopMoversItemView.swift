//
//  TopMoversItemView.swift
//  crypto-track
//
//  Created by Sebastian on 12/4/23.
//

import SwiftUI

struct TopMoversItemView: View {
    var body: some View {
        VStack(alignment: .leading) {
            // image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 4)

            // coin info
            HStack(spacing: 2) {
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)

                Text("$20,330.00")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.bottom, 1)

            // coin % change
            Text("+5.60%") // TODO: updated +/- sign based on price
                .font(.title2)
                .foregroundColor(.green) // TODO: update color based on -/+
        }
        .frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 1)
        )
    }
}

struct TopMoversItemView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversItemView()
    }
}
