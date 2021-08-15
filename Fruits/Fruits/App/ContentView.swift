//
//  ContentView.swift
//  Fruits
//
//  Created by Eduardo Monroy Husillos on 24/7/21.
//

import SwiftUI

struct ContentView: View {

    // MARK: - PROPIERTIES
    
    var fruits: [Fruits] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical,4)
                    }
                }
            }
            .navigationTitle("Fruits")
        } //: NAVIGATION
    }
}

    // MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
