//
//  CardView.swift
//  RickAndMorty
//
//  Created by Berkay Yaman on 30.11.2023.
//

import SwiftUI
import Kingfisher

struct CardView: View {
    var character: Results
    var body: some View {
        VStack {
            ZStack {
                KFImage(URL(string: character.image ?? ""))
                    .resizable()
                    .frame(width: 160, height: 160)
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 2))
                Spacer()
                Text(character.species?.rawValue ?? "Human")
                    .foregroundColor(.black)
                    .font(.system(size:15))
                    .padding(8)
                    .background(Color.gray.opacity(0.6))
                    .cornerRadius(8)
                    .offset(x: -50, y: -60)
                    .bold()
                
                Text(character.gender?.rawValue ?? "Male")
                    .foregroundColor(.black)
                    .font(.system(size:15))
                    .padding(8)
                    .background(Color.gray.opacity(0.6))
                    .cornerRadius(8)
                    .offset(x: -50, y: 60)
                    .bold()
                
                Text(character.status?.rawValue ?? "Alive")
                    .foregroundColor(.black)
                    .font(.system(size:15))
                    .padding(8)
                    .background(
                        character.status == .alive ? Color.green : (character.status == .dead ? Color.red : Color.gray.opacity(0.6))
                    )
                    .cornerRadius(8)
                    .offset(x: 50, y: -60)
                    .bold()
            }
            
            HStack {
                Image(systemName: "folder.fill")
                Text(character.name ?? "")
                    .font(.system(size:15))
                    .bold()
                Spacer()
            }.padding(.vertical)
            
            HStack {
                Image(systemName: "location.fill")
                Text(character.location?.name ?? "")
                    .font(.system(size:15))
                    .bold()
                Spacer()
            }
            
            
        }
        .frame(width: 160, height: 300)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color.gray.opacity(0.2))
        )
        
    }
}


