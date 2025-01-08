//
//  StarWarsDemoTests.swift
//  StarWarsDemoTests
//
//  Created by Jesús Ervin Chapi Suyo on 7/01/25.
//

import Testing
@testable import StarWarsDemo

extension Tag{
    @Tag static var repository: Self
}

@Suite("prueba de StarWarsDemo", .tags(.repository))
struct StarWarsDemoTests {
    
    let repository = StarWarsDemoRepositoryTests()
    let viewModel = StarCardVM(respoitory: StarWarsDemoRepositoryTests())
    
    @Test("Prueba de carga de datos del repository")
    func dataLoad() throws {
        let data = try repository.getData()
        #expect(data.count > 0)
    }

    @Test("Prueba de carga de datos del viewModel")
    func viewModelDataLoad() throws {
        #expect(viewModel.cards.count == 4)
    }
}
