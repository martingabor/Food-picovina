//
//  RatingControl.swift
//  Food picovina
//
//  Created by Martin Gábor on 01/12/2017.
//  Copyright © 2017 Martin Gábor. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    var rating = 0
    
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0)
    @IBInspectable var starCount: Int = 5
    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    //MARK: Private Methods
    
    private func setupButtons(){
        for _ in 0..<starCount {
            //Create button
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            //Constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            
            //Add the button to the stack
            button.addTarget(self, action:
                #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            addArrangedSubview(button)
            
            //Add the new button to the button array
            ratingButtons.append(button);
        }
    }
    //MARK: Button Action
    
    @objc func ratingButtonTapped(button: UIButton){
        print("Button pressed")
    }
}
