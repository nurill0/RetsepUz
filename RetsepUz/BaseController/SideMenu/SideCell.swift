//
//  SideCell.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 15/01/22.
//

import UIKit

class SideCell: UICollectionViewCell {
    let imageSing = UIImageView()
    let titleLabel = UILabel()
    static let identifier = "cell"
    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
    }
    private func initViews(){
        let view = UIView()
        self.addSubview(view)
        view.backgroundColor = .black
        view.snp.makeConstraints { make in
            make.right.left.equalToSuperview()
            make.bottom.equalToSuperview()
            make.height.equalTo(1)
        }
        self.addSubview(imageSing)
        self.addSubview(titleLabel)
        imageSing.image = UIImage(named: "")?.withRenderingMode(.alwaysOriginal)
        imageSing.contentMode = .scaleAspectFit
        imageSing.snp.makeConstraints { make in
            make.top.bottom.left.equalToSuperview().inset(10)
            make.width.equalTo(50)
        }
        titleLabel.text = "bir nimalar"
        titleLabel.textColor = .black
        titleLabel.textAlignment = .left
        titleLabel.font = .systemFont(ofSize: 18, weight: .bold)
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(imageSing.snp.right).offset(20)
            make.top.right.bottom.equalToSuperview().inset(2)
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
