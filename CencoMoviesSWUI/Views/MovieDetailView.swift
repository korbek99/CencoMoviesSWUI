//
//  MovieDetailView.swift
//  CencoMoviesSWUI
//
//  Created by Jose Preatorian on 16-01-26.
//
import SwiftUI

struct MovieDetailView: View {
    let movie: Result
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        // Imagen 1: El Poster
                        MovieImage(path: movie.posterPath, width: 250, height: 375)
                        
                        // Imagen 2: El Backdrop (Fondo)
                        MovieImage(path: movie.backdropPath, width: 330, height: 200)
                    }
                    .padding(.horizontal)
                }
                
                VStack(alignment: .leading, spacing: 12) {
                    Text(movie.title)
                        .font(.title.bold())
                    
                    HStack {
                        Label("\(String(format: "%.1f", movie.voteAverage))", systemImage: "star.fill")
                            .foregroundColor(.orange)
                        
                        Text("•")
                        
                        Text(movie.releaseDate)
                        
                        Text("•")
                        
                        Text(movie.originalLanguage.uppercased())
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Text("Sinopsis")
                        .font(.headline)
                    
                    Text(movie.overview)
                        .font(.body)
                        .lineSpacing(5)
                }
                .padding(.horizontal)
            }
        }
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MovieImage: View {
    let path: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w500\(path)")) { phase in
            switch phase {
            case .success(let image):
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: width, height: height)
                    .cornerRadius(12)
            case .failure:
                Color.gray.frame(width: width, height: height).cornerRadius(12)
            default:
                ProgressView().frame(width: width, height: height)
            }
        }
    }
}

//#Preview {
//    MovieDetailView()
//}
