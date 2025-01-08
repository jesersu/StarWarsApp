//
//  Model.swift
//  StarWarsDemo
//
//  Created by Jesús Ervin Chapi Suyo on 7/01/25.
//

import Foundation

struct StarCardDTO : Codable{
    let id: Int
    let nombre: String
    let raza: String
    let descripcion: String
    let planetaOrigen: String
    let epoca: String
    let afiliacion: String
    let habilidades: String
    let armas: String
    let imagen: String
}

extension StarCardDTO {
    var toCard: StarCard {
        StarCard (id: id,
                  nombre: nombre,
                  raza: raza,
                  descripcion: descripcion,
                  planetaOrigen: planetaOrigen,
                  epoca: epoca,
                  afiliacion: afiliacion.components(separatedBy: ", ").map(\.capitalized),
                  habilidades: habilidades.components(separatedBy: ", ").map(\.capitalized),
                  armas: armas.components(separatedBy: ", ").map(\.capitalized),
                  imagen: imagen) 
    }
}

struct StarCard : Identifiable, Hashable{
    let id: Int
    let nombre: String
    let raza: String
    let descripcion: String
    let planetaOrigen: String
    let epoca: String
    let afiliacion: [String]
    let habilidades: [String]
    let armas: [String]
    let imagen: String
}
