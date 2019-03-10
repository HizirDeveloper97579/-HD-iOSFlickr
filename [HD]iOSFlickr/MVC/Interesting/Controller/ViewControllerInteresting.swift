//
//  InterestingViewController.swift
//  [HD]iOSFlickr
//
//  Created by -=HIZIR=- on 07/03/2019.
//  Copyright © 2019 GurobaDeveloper. All rights reserved.
//

import UIKit

class InterestingViewController: UIViewController {
//MARK: --- VARIBELS
	public var arrayPhotos     = Photos()
	public let managerLoadJSON = LoadJSON<ResultInterestning>()
	public var popularPhoto    = [UIImage]()
//MARK: --- OUTLETS
	@IBOutlet weak var collectionView    : UICollectionView!
	@IBOutlet weak var collageButtonLabel: UIButton!
	@IBOutlet weak var activityIndicator : UIActivityIndicatorView!
//MARK: --- LOAD
	override func viewDidLoad() {
		super.viewDidLoad()
		setupSelfController()
	}
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		guard !Reachability.shared.isConnectedToNetwork() else { return }
		Alert.notNetwork(vc: self)
		self.view.isUserInteractionEnabled = false
	}
//MARK: --- FUNCTIONS
	private func setupSelfController(){
		loadJSONAndReloadCollection()
		collageButtonLabel.shadowAndCornerRadius()
		activityIndicator.show(on: true)
	}
//MARK: --- BUTTONS
	@IBAction func collageButton(_ sender: UIButton){
		performSegue(withIdentifier: ID.SgInteresting_Collage.rawValue, sender: nil)
	}
//MARK: --- SEGUES
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		switch segue.identifier {
		case ID.SgInteresting_Collage.rawValue:
			(segue.destination as! CollageViewController).arrayPhotos = arrayPhotos
		default:
			break
		}
	}
}

