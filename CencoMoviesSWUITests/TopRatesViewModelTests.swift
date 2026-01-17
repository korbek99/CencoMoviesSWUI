//
//  TopRatesViewModelTests.swift
//  CencoMoviesSWUITests
//
//  Created by Jose Preatorian on 16-01-26.
//

import XCTest

import XCTest
@testable import CencoMoviesSWUI

final class TopRatesViewModelTests: XCTestCase {
    
    var viewModel: PopularViewModel!

    override func setUp() {
        super.setUp()
        viewModel = PopularViewModel()
    }

    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }

    func testFilteredArticlesWithSearchText() {

        let movies = [
            Result(adult: false, backdropPath: "", genreIDS: [], id: 1, originalLanguage: "en", originalTitle: "Inside Out 2", overview: "", popularity: 1.0, posterPath: "", releaseDate: "2024", title: "Inside Out 2", video: false, voteAverage: 9.0, voteCount: 100),
            Result(adult: false, backdropPath: "", genreIDS: [], id: 2, originalLanguage: "en", originalTitle: "Deadpool", overview: "", popularity: 1.0, posterPath: "", releaseDate: "2024", title: "Deadpool", video: false, voteAverage: 8.5, voteCount: 100)
        ]
        viewModel.articles = movies

        viewModel.searchText = "inside"

        XCTAssertEqual(viewModel.filteredArticles.count, 1)
        XCTAssertEqual(viewModel.filteredArticles.first?.title, "Inside Out 2")
    }

    func testFilteredArticlesEmptySearch() {
        // GIVEN: Películas cargadas
        viewModel.articles = [
            Result(adult: false, backdropPath: "", genreIDS: [], id: 1, originalLanguage: "en", originalTitle: "A", overview: "", popularity: 1, posterPath: "", releaseDate: "", title: "Movie A", video: false, voteAverage: 1, voteCount: 1)
        ]


        viewModel.searchText = ""

        XCTAssertEqual(viewModel.filteredArticles.count, 1)
    }

    func testInitialStateIsCorrect() {
 
        XCTAssertTrue(viewModel.articles.isEmpty)
        XCTAssertFalse(viewModel.isLoading)
        XCTAssertEqual(viewModel.searchText, "")
    }
}
