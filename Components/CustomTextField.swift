//
//  CustomTextField.swift
//  VChores
//
//  Created by klaire ✨ on 4/25/22.
//

import Foundation
import UIKit

class CustomField:UITextField{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func commonInit(){
        //TODO:- will define it later
    }
    
    var placeholderColor:UIColor = UIColor.lightGray{
        didSet{
            self.setPlaceholderColor()
        }
    }
    
    private func setPlaceholderColor(){
//        self.attributedPlaceholder = NSAttributedString(string: self.placeholder ?? "",
//                                                        attributes: )
    }
    
}
