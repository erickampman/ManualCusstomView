//
//  ManualView.swift
//  ManualCustomView
//
//  Created by Eric Kampman on 10/16/24.
//

import UIKit

class ManualView: UIView {
	var imageView: UIImageView!
	var caption: UILabel!
	
	let imageName: String!
	let text: String!

	init(imageName: String, text: String) {
		self.imageName = imageName
		self.text = text
		
		super.init(frame: .zero)
		// want rounded rect, see draw()
		self.backgroundColor = .white
		setupSubviews()
	}
	
	func setupSubviews() {
		self.imageView = UIImageView(image: UIImage(systemName: self.imageName))
		self.imageView.backgroundColor = .white.withAlphaComponent(0.5)
		self.imageView.layer.borderColor = CGColor.init(gray: 0.0, alpha: 1.0)
		self.imageView.layer.borderWidth = 4
		self.imageView.layer.cornerRadius = 10
		self.imageView.clipsToBounds = true
		self.imageView.contentMode = .scaleAspectFill
		
		self.caption = UILabel()
		self.caption.text = text
		self.caption.backgroundColor = .green
		self.caption.font = .systemFont(ofSize: 12)
		self.caption.textAlignment = .center
		self.caption.layer.borderColor = CGColor.init(gray: 0.0, alpha: 1.0)
		self.caption.layer.borderWidth = 4
		self.caption.layer.cornerRadius = 6
		self.caption.clipsToBounds = true

		
		translatesAutoresizingMaskIntoConstraints = false
		imageView.translatesAutoresizingMaskIntoConstraints = false
		caption.translatesAutoresizingMaskIntoConstraints = false

		self.addSubview(self.imageView)
		self.addSubview(self.caption)
	}
	
	func setConstraints() {
		guard let superview else {
			print("superview is nil")
			return
		}
		let selfWidth = CGFloat(100)
		let selfHeight = CGFloat(150)
		let subviewInset = CGFloat(4)
		let imageLength = selfWidth - subviewInset
		let captionHeight: CGFloat = 30
		NSLayoutConstraint.activate([
			self.centerYAnchor.constraint(equalTo: superview.centerYAnchor),
			self.centerXAnchor.constraint(equalTo: superview.centerXAnchor),
			self.widthAnchor.constraint(equalToConstant: selfWidth),
			self.heightAnchor.constraint(equalToConstant: selfHeight),

			self.imageView.centerXAnchor.constraint(equalTo: superview.centerXAnchor),
			self.imageView.widthAnchor.constraint(equalToConstant: selfWidth - subviewInset),
			self.imageView.heightAnchor.constraint(equalToConstant: imageLength),
			
			self.caption.centerXAnchor.constraint(equalTo: superview.centerXAnchor),
			self.caption.heightAnchor.constraint(equalToConstant: captionHeight),
			self.caption.widthAnchor.constraint(equalToConstant: selfWidth - subviewInset),
			self.caption.topAnchor.constraint(equalToSystemSpacingBelow: self.imageView.bottomAnchor, multiplier: 1)
		])
	}
	
	override func draw(_ rect: CGRect) {
		let r = self.bounds
		let rr = UIBezierPath(roundedRect: r, cornerRadius: 10)
		UIColor.lightGray.setFill()
		rr.fill()
		UIColor.black.setStroke()
		rr.lineWidth = 4
		rr.stroke()
	}

	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}
