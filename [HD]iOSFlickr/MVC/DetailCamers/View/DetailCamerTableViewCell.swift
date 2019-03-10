//
//  DetailCamerTableViewCell.swift
//  [HD]iOSFlickr
//
//  Created by -=HIZIR=- on 08/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//

import UIKit

class DetailCamerTableViewCell: UITableViewCell {
	
	private let managerLoadPhoto = LoadPhoto()
	
	@IBOutlet weak private var  activityIndicator: UIActivityIndicatorView!
	@IBOutlet weak private var  largeImageView   : UIImageView!
	@IBOutlet weak private var  nameBrandLabel   : UILabel!
	

	public func configureCell(camera: Camera?){
		guard let camera = camera else { return }
		self.nameBrandLabel.text = camera.name?._content
		self.photoLoad(photoURL: camera.images?.large?._content)
	}
	
	private func photoLoad(photoURL: String?){
		guard let photoURL = photoURL else { return }
		managerLoadPhoto.transferData(stringURL: photoURL) { [unowned self] (image) in
			self.largeImageView.image = image as? UIImage
			self.activityIndicator.show(on: false)
		}
	}
	override func awakeFromNib() {
		super.awakeFromNib()
		self.activityIndicator.show(on: true)
	}
}
