//
//  DetailViewModel.swift
//  RickAndMorty
//
//  Created by Berkay Yaman on 30.11.2023.
//

import Foundation

class DetailViewModel: ObservableObject {
    private let rickMortyService: RickMortyService
    
    @Published var detailCharacter: DetailModel = DetailModel(id: 0, name: "", status: "", species: "", type: "", gender: "", origin: Locations(name: "", url: ""), location: Locations(name: "", url: ""), image: "", episode: [""], url: "", created: "")
    
    init(rickMortyService: RickMortyService) {
        self.rickMortyService = rickMortyService
       
    }
    
    func fetchDetails(id: Int){
        let url = URL(string: "https://rickandmortyapi.com/api/character/\(id)")
        rickMortyService.fetchData(from: url!) { (result: Result<DetailModel, Error>) in
            switch result {
            case .success(let character):
                    DispatchQueue.main.async {
                        self.detailCharacter = character
                    }
                
            case .failure(let error):
                print("Error fetching characters: \(error)")
            }
        }
    }
}
