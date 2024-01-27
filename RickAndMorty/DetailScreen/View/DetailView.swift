//
//  DetailView.swift
//  RickAndMorty
//
//  Created by Berkay Yaman on 30.11.2023.
//

import SwiftUI
import Kingfisher

struct DetailView: View {
    
    @StateObject private var viewModel: DetailViewModel = DetailViewModel(rickMortyService: APIManager())
    var id: Int
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    var body: some View {
        VStack{
            KFImage(URL(string: viewModel.detailCharacter.image!))
                .resizable()
                .frame(width: width - 20, height: height * 0.40)
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
                .padding(.top)
            HStack {
                Image(systemName: "folder.fill")
                    .padding(.horizontal)
                Text(viewModel.detailCharacter.name ?? "")
                    .font(.system(size: 25))
                    .bold()
                    .padding(.horizontal)
                    .padding(.vertical)
                Spacer()
            }
            
            HStack {
                Image(systemName: "location.fill")
                    .padding(.horizontal)
                Text(viewModel.detailCharacter.location?.name ?? "")
                    .font(.system(size: 25))
                    .bold()
                    .padding(.horizontal)
                Spacer()
                
            }
            HStack {
                Text("Episodes of Character")
                    .font(.system(size: 25))
                    .bold()
                    .padding(.horizontal)
                .padding(.top)
                Spacer()
            }
            List {
                ForEach(viewModel.detailCharacter.episode ?? ["1"], id: \.self) { episode in
                    Text(episode)
                }
            }
            
            Spacer()
            
        }.onAppear {
            viewModel.fetchDetails(id: id)
        }.edgesIgnoringSafeArea(.all)
       
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(id: 2)
    }
}
