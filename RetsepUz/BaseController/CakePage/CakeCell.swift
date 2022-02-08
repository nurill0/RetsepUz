//
//  CakeCell.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 18/01/22.
//

import UIKit

class CakeCell: UICollectionViewCell{
    static let identifier = "cell"
    let cakeImage = UIImageView()
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
        self.addSubview(cakeImage)
        self.addSubview(titleLabel)
        self.sendSubviewToBack(cakeImage)
        self.addSubview(timeLabel)
        cakeImage.image = UIImage(named: "2")
        cakeImage.contentMode = .scaleAspectFit
        cakeImage.backgroundColor = .clear
        cakeImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        titleLabel.text = "Gaz pechida pishirilgan kartoshka va go’shtli frikadelkalar"
        titleLabel.textAlignment = .center
        titleLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        titleLabel.font = .systemFont(ofSize: 20, weight: .bold)
        titleLabel.numberOfLines = 0
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.right.left.equalToSuperview().inset(5)
            
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
}
