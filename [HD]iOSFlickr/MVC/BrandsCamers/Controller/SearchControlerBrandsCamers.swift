//
//  SearchControlerBrandsCamers.swift
//  [HD]iOSFlickr
//
//  Created by -=HIZIR=- on 08/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//

import UIKit

extension BrandsCamersViewController: UISearchResultsUpdating {
	
	public func setupSearchController(){
		//nil указывает что отображение результата будет на том же контроллере где идет поиск
		self.searchController = UISearchController(searchResultsController: nil)
		//указываем , что получателем результата об изменении текста в поисковой строке будет (BrandsCamersViewController)
		self.searchController.searchResultsUpdater = self
		//разрешаем взоимодействовать с отфтльтрованым контентом , как с основным
		self.searchController.obscuresBackgroundDuringPresentation = false
		//позволяет отпустить стороку поиска при переходе на другой экран
		self.definesPresentationContext = true
		self.navigationItem.searchController = self.searchController
		
	}
	
	//метод протокола срабатывает при вводе текста в поиске
	func updateSearchResults(for searchController: UISearchController) {
		guard let searchText = searchController.searchBar.text else { return }
		filterSearch(text: searchText)
	}

	private func filterSearch(text: String){
		guard let brandsCamers  = brandsCamers else { return }
		self.searchBrandsCamers = brandsCamers.filter{$0.name.lowercased().contains(text.lowercased())}
		self.tableView.reloadData()
	}
	
}
