//
//  MainViewModel.swift
//  RickAndMorty
//
//  Created by Berkay Yaman on 30.11.2023.
//

import Foundation

class MainViewModel: ObservableObject {
    
    private let rickMortyService: RickMortyService
    
    @Published var characters: [Results] = []
    
    init(rickMortyService: RickMortyService) {
        self.rickMortyService = rickMortyService
    }
    
    func fetchAllCharacters() {
        let url = URL(string: "https://rickandmortyapi.com/api/character")
        rickMortyService.fetchData(from: url!) { (result: Result<Character, Error>) in
            switch result {
            case .success(let characters):
                if let results = characters.results {
                    DispatchQueue.main.async {
                        self.characters = results
                    }
                }
            case .failure(let error):
                print("Error fetching characters: \(error)")
            }
        }
    }
    
    func fetchOneCharacter(name: String) {
        let url = URL(string: "https://rickandmortyapi.com/api/character/?name=\(name)")
        rickMortyService.fetchData(from: url!) { (result: Result<Character, Error>) in
            switch result {
            case .success(let characters):
                if let results = characters.results {
                    DispatchQueue.main.async {
                        self.characters = results
                    }
                }
            case .failure(let error):
                print("Error fetching characters: \(error)")
            }
        }
        
    }
}
