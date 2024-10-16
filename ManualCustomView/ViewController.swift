//
//  ViewController.swift
//  ManualCusstomView
//
//  Created by Eric Kampman on 10/16/24.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		let manualView = ManualView(imageName: "scribble", text: "Manual View")
		view.addSubview(manualView)
		manualView.setConstraints()
	}


}

