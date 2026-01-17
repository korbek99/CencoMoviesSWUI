//
//  MovieTopRatesView.swift
//  CencoMoviesSWUI
//
//  Created by Jose Preatorian on 15-01-26.
//

import SwiftUI


import SwiftUI
struct MovieTopRatesView: View {
    @StateObject private var viewModel = TopRatesViewModel()
    
    var body: some View {
        NavigationView {
            Group {
                if viewModel.isLoading {
                    ProgressView("Cargando películas...")
                } else {
                    List(viewModel.filteredArticles, id: \.id) { article in
                        NavigationLink(destination: MovieDetailView(movie: article)) {
                            HStack(alignment: .top, spacing: 15) {
                                AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w200\(article.posterPath)")) { phase in
                                 
                                    if let image = phase.image {
                                        image.resizable()
                                             .aspectRatio(contentMode: .fill)
                                             .frame(width: 80, height: 120)
                                             .cornerRadius(8)
                                    } else {
                                        ProgressView().frame(width: 80, height: 120)
                                    }
                                }

                                VStack(alignment: .leading, spacing: 5) {
                                  
                                    Text(article.title).font(.headline).lineLimit(2)
                                    Text("Language: \(article.originalLanguage.uppercased())").font(.subheadline).foregroundColor(.gray)
                                    Text(article.releaseDate).font(.caption).foregroundColor(.secondary)
                                }
                            }
                            .padding(.vertical, 4)
                        }
                    }
                }
            }
            .navigationTitle("TopRates")
            .searchable(text: $viewModel.searchText, prompt: "Buscar película")
            .onAppear {
                viewModel.fetchArticles()
            }
        }
    }
}
#Preview {
    MoviePopularView()
}






//
//struct MovieTopRatesView: View {
//
//    @StateObject private var viewModel = TopRatesViewModel()
//    
//    var body: some View {
//        NavigationView {
//            Group {
//                if viewModel.isLoading {
//                    ProgressView("Cargando artículos...")
//                } else {
//                    List(viewModel.articles, id: \.id) { article in
//                        HStack(alignment: .top, spacing: 15) {
//                            // 1. Imagen del póster
//                            AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w200\(article.posterPath)")) { phase in
//                                switch phase {
//                                case .empty:
//                                    // Mientras carga o si no hay imagen
//                                    ProgressView()
//                                        .frame(width: 80, height: 120)
//                                case .success(let image):
//                                    image
//                                        .resizable()
//                                        .aspectRatio(contentMode: .fill)
//                                        .frame(width: 80, height: 120)
//                                        .cornerRadius(8)
//                                case .failure:
//                                    // Si falla la carga
//                                    Image(systemName: "photo")
//                                        .frame(width: 80, height: 120)
//                                        .background(Color.gray.opacity(0.3))
//                                        .cornerRadius(8)
//                                @unknown default:
//                                    EmptyView()
//                                }
//                            }
//
//                            // 2. Información textual
//                            VStack(alignment: .leading, spacing: 5) {
//                                Text(article.title)
//                                    .font(.headline)
//                                    .lineLimit(2)
//                                
//                                Text("Language: \(article.originalLanguage.uppercased())")
//                                    .font(.subheadline)
//                                    .foregroundColor(.gray)
//                                
//                                Text(article.releaseDate)
//                                    .font(.caption)
//                                    .foregroundColor(.secondary)
//                            }
//                        }
//                        .padding(.vertical, 4)
//                    }
//                }
//            }
//            .navigationTitle("Populares")
//            .onAppear {
//                // Llamamos al servicio cuando la vista aparece
//                viewModel.fetchArticles()
//            }
//        }
//    }
//}
//
//#Preview {
//    MovieTopRatesView()
//}
