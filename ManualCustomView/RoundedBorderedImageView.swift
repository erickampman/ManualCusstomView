//
//  RoundedBorderedImageView.swift
//  ManualCustomView
//
//  Created by Eric Kampman on 10/16/24.
//

import UIKit

class RoundedBorderedImageView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
	
	var systemImageName: String!
	var imageViewView: UIImageView!
	
	init?(systemImageName: String) {
		if let image = UIImage(systemName: systemImageName) {
			self.imageViewView = UIImageView(image: image)
		} else {
			return nil
		}
		super.init(frame: .zero)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	var borderColor: UIColor = .black {
		didSet {
			layer.borderColor = borderColor.cgColor
		}
	}
	
	var borderWidth: CGFloat = 1 {
		didSet {
			layer.borderWidth = borderWidth
		}
	}
	
	var cornerRadius: CGFloat = 10 {
		didSet {
			layer.cornerRadius = cornerRadius
		}
	}
	
	var overrideBackgroundColor: UIColor? {
		didSet {
			backgroundColor = overrideBackgroundColor
		}
	}

	override func draw(_ rect: CGRect) {
		
	}


}
