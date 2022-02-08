//
//  MealsCell.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 17/01/22.
//

import UIKit
class MealCell: UICollectionViewCell{
    static let identifier = "cell"
    let mealImage = UIImageView()
    let titleLabel = UILabel()
    let backView = UIView()
    let timeLabel = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        self.clipsToBounds = true
        self.backgroundColor = .white.withAlphaComponent(0.6)

        self.layer.cornerRadius = 18
        initViews()
    }
    private func initViews(){
        self.addSubview(mealImage)
        self.addSubview(titleLabel)
        self.sendSubviewToBack(mealImage)
        self.addSubview(timeLabel)
        mealImage.image = UIImage(named: "2")
        mealImage.contentMode = .scaleAspectFit
        mealImage.backgroundColor = .clear
        mealImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        titleLabel.text = "Gaz pechida pishirilgan kartoshka va go’shtli frikadelkalar"
        titleLabel.textAlignment = .center
        titleLabel.textColor = .white
        titleLabel.font = .systemFont(ofSize: 20, weight: .bold)
        titleLabel.numberOfLines = 0
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.right.left.equalToSuperview().inset(10)
            
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
