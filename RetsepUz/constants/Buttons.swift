//
//  Buttons.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 18/01/22.
//

import UIKit

class MyButton: UIButton{
    open override func layoutSubviews() {
        super.layoutSubviews()
    }
    init(title: String, fontSize: CGFloat, bgcColor: UIColor, titleColor: UIColor, radius: CGFloat,borderWidth: CGFloat){
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = .systemFont(ofSize: fontSize)//.boldSystemFont(ofSize: fontSize)
        self.backgroundColor = bgcColor
        self.setTitleColor(titleColor, for: .normal)
        self.layer.cornerRadius = radius
        self.layer.borderWidth = borderWidth
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
