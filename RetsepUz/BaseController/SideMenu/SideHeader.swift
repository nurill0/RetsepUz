//
//  SideHeader.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 15/01/22.
//

import UIKit

class SideHeader: UICollectionReusableView{
    var timer        :         Timer!
    var imageName = 0
 
    let imageView = UIImageView()
    static let identifier = "header"
    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
    }
    private func initViews(){
        self.addSubview(imageView)
        imageView.image = UIImage(named: "RetsepUz")?.withRenderingMode(.alwaysOriginal)
        imageView.snp.makeConstraints { make in
            if #available(iOS 11.0, *) {
                make.top.equalTo(self.safeAreaLayoutGuide.snp.top)
            } else {
                // Fallback on earlier versions
            }
            make.right.left.bottom.equalToSuperview()
        }
        imageView.contentMode = .scaleAspectFit
        timer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(changePicture), userInfo: nil, repeats: true)
    }
    @objc func changePicture(){
        if imageName<=5{

        }
        else{
            imageName = 0
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
