//
//  Repository.swift
//  StarWarsDemo
//
//  Created by Jesús Ervin Chapi Suyo on 7/01/25.
//

import Foundation

protocol DataRepositoryProtocol {
    var url: URL { get }
}

extension DataRepositoryProtocol {
    func getData() throws -> [StarCard]{
        guard let url = Bundle.main.url(forResource: "starwars", withExtension: "json") else {
            return []
        }
      
        let data = try Data(contentsOf: url )
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode([StarCardDTO].self, from: data).map(\.toCard)
    }
}

struct DataRepository: DataRepositoryProtocol {
    var url: URL = Bundle.main.url(forResource: "Starwars", withExtension: "json")!
}


struct StarWarsDemoTests: DataRepositoryProtocol {
    var url: URL =  Bundle.main.url(forResource: "Starwars Test", withExtension: "json")!
}
