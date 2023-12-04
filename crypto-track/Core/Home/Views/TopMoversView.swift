//
//  TopMoversView.swift
//  crypto-track
//
//  Created by Sebastian on 12/4/23.
//

import SwiftUI

struct TopMoversView: View {
    let NUM_MAX_RESULTS = 5

    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Movers")
                .font(.headline)

            ScrollView(.horizontal) {
                HStack(spacing: 16) {
                    ForEach(0 ..< NUM_MAX_RESULTS, id: \.self) { _ in
                        TopMoversItemView()
                    }
                }
            }
        }
        .padding()
    }
}

struct TopMoversView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversView()
    }
}
