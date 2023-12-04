//
//  HomeView.swift
//  crypto-track
//
//  Created by Sebastian on 12/4/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                // top movers view
                TopMoversView()

                Divider()

                // all coins view
                AllCoinsView()
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
