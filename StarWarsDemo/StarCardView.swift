//
//  StarCardView.swift
//  StarWarsDemo
//
//  Created by Jesús Ervin Chapi Suyo on 7/01/25.
//

import SwiftUI

struct StarCardView: View {
    let card: StarCard
    
    var body: some View {
        HStack {
            VStack (alignment: .leading){
                Text(card.nombre)
                    .font(.headline)
                Text(card.raza)
                    .foregroundStyle(.secondary)
                Text(card.afiliacion.formatted(.list(type: .and)))
                    .font(.footnote)
            }
            Spacer()
            
            Image(card.imagen)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            
            
        }
    }
}

#Preview {
    StarCardView(card: .test)
}
