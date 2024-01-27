//
//  ContentView.swift
//  RickAndMorty
//
//  Created by Berkay Yaman on 30.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText = ""
    @StateObject private var viewModel: MainViewModel = MainViewModel(rickMortyService: APIManager())
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(viewModel.characters, id: \.id) { characters in
                        NavigationLink(destination: DetailView(id: characters.id ?? 1)) {
                                CardView(character: characters)
                                    .foregroundColor(.black)
                            }
                    }
                }
            }
            .navigationTitle("Rick And Morty App")
            
        }
        .searchable(text: $searchText)
        .onChange(of: searchText) { newSearchText in
            viewModel.fetchOneCharacter(name: newSearchText)
        }
        .onAppear {
            viewModel.fetchAllCharacters()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
