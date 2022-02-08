//
//  RetsepCell.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 17/01/22.
//

import UIKit

@available(iOS 11.0, *)
class RetsepCell: UICollectionViewCell{
    static let identifier = "cell"
    let mealImage = UIImageView()
    let definitionLabel = UILabel()
    let productsLabel = UILabel()
    let stepsLabel = UILabel()
    let textView = UITextView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white.withAlphaComponent(0.3)
        initViews()
    }
    private func initViews(){
        self.addSubview(mealImage)
        self.addSubview(definitionLabel)
        self.addSubview(productsLabel)
        self.addSubview(stepsLabel)
        self.addSubview(textView)
       
//        definitionLabel.numberOfLines = 0
//        productsLabel.numberOfLines = 0
//        stepsLabel.numberOfLines = 0
        mealImage.image = UIImage(named: "one")
        mealImage.contentMode = .scaleAspectFit
        mealImage.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(20)
            make.right.left.equalToSuperview().inset(10)
            make.height.equalTo(200)
        }
        textView.text = ""
        textView.backgroundColor = .white
        textView.textAlignment = .justified
        textView.textColor = .black
        textView.isEditable = false
        textView.showsVerticalScrollIndicator = false
        textView.font = .systemFont(ofSize: 20, weight: .semibold)
        textView.snp.makeConstraints { make in
            make.top.equalTo(mealImage.snp.bottom).offset(20)
            make.right.left.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
//        definitionLabel.text = "eedfe"
//        definitionLabel.textColor = .white
//        definitionLabel.textAlignment = .center
//        definitionLabel.text?.height(withConstrainedWidth: self.frame.width, font: .systemFont(ofSize: 20, weight: .heavy) )
//        definitionLabel.snp.makeConstraints { make in
//            make.right.left.equalToSuperview().inset(15)
//            make.top.equalTo(mealImage.snp.bottom).offset(15)
//        }
//        productsLabel.text = "eedfe"
//        productsLabel.textColor = .white
//        productsLabel.textAlignment = .center
//        productsLabel.text?.height(withConstrainedWidth: self.frame.width, font: .systemFont(ofSize: 20, weight: .semibold) )
//        productsLabel.snp.makeConstraints { make in
//            make.right.left.equalToSuperview().inset(15)
//            make.top.equalTo(definitionLabel.snp.bottom).offset(15)
//        }
//        stepsLabel.text = "eedfe"
//        stepsLabel.textColor = .white
//        stepsLabel.textAlignment = .center
//        stepsLabel.text?.height(withConstrainedWidth: self.frame.width, font: .systemFont(ofSize: 18, weight: .regular) )
//        stepsLabel.snp.makeConstraints { make in
//            make.right.left.equalToSuperview().inset(15)
//            make.top.equalTo(productsLabel.snp.bottom).offset(15)
//        }        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
