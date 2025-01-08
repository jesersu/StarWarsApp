//
//  StarCardVM.swift
//  StarWarsDemo
//
//  Created by Jesús Ervin Chapi Suyo on 7/01/25.
//

import Foundation
import SwiftUI

@Observable
final class StarCardVM {

    let respoitory: DataRepositoryProtocol
    
    var cards: [StarCard]
    
    init(respoitory: DataRepositoryProtocol = DataRepository()) {
        self.respoitory = respoitory
        do {
            cards = try respoitory.getData()
        }catch{
            cards = []
        }
    }
    
}
