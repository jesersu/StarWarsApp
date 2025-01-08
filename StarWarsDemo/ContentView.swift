//
//  ContentView.swift
//  StarWarsDemo
//
//  Created by Jesús Ervin Chapi Suyo on 7/01/25.
//

import SwiftUI

struct ContentView: View {
    @State var vm = StarCardVM()
    var body: some View {
        List {
            ForEach(vm.cards) { card in
                StarCardView(card: card)
            }
        }
    }
}

#Preview {
    ContentView(vm: StarCardVM(respoitory: StarWarsDemoTests()))
}
