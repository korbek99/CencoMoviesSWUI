//
//  TopRatesViewModel.swift
//  CencoMoviesSWUI
//
//  Created by Jose Preatorian on 15-01-26.
//

import Foundation


class TopRatesViewModel: ObservableObject {
    @Published var articles: [Result] = []
    @Published var isLoading: Bool = false
    @Published var searchText: String = "" 
    
    private let service = webServicesTopRates()
    
    var filteredArticles: [Result] {
        if searchText.isEmpty {
            return articles
        } else {
            return articles.filter { $0.title.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    func fetchArticles() {
        self.isLoading = true
        service.getArticles { [weak self] fetchedResults in
            DispatchQueue.main.async {
                self?.isLoading = false
                if let results = fetchedResults {
                    self?.articles = results
                }
            }
        }
    }
}

