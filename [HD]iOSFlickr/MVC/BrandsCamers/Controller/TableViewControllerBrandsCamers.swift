//
//  BrandsCamersTableViewController.swift
//  [HD]iOSFlickr
//
//  Created by -=HIZIR=- on 07/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//

import UIKit

//MARK: --- DataSource
extension  BrandsCamersViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		guard let brandsCamersCount = brandsCamers?.count else { return 0 }
		return searchBrandsCamers.isEmpty ? brandsCamersCount : searchBrandsCamers.count
	}
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
		let cell = tableView.dequeueReusableCell(withIdentifier: BrandsCamersTableViewCell.identifire, for: indexPath) as! BrandsCamersTableViewCell
		cell.brand = searchBrandsCamers.isEmpty ? brandsCamers?[indexPath.row] : searchBrandsCamers[indexPath.row] 
		return cell
	}
}
//MARK: --- Delegate
extension  BrandsCamersViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
		let brand = searchBrandsCamers.isEmpty ? brandsCamers?[indexPath.row] : searchBrandsCamers[indexPath.row]
		performSegue(withIdentifier: ID.SgBrandsCamers_DetailBrandCamer.rawValue, sender: brand)
	}
}



