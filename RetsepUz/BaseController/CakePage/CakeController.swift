//
//  CakeController.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 18/01/22.
//

import UIKit

@available(iOS 11.0, *)
class CakeController: UIViewController {
    let model = CakeData()
    var item: CakeRetsepDetailes?
    let backImage1 = UIImageView()
    let backImage2 = UIImageView()
    let backImage3 = UIImageView()
    let bgcImage = UIImageView()
    lazy var collectionView: UICollectionView = {
        let layout = ZoomAndSnapFlowLayout()
        layout.minimumLineSpacing = 50
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(CakeCell.self, forCellWithReuseIdentifier: CakeCell.identifier)
        return collectionView
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.tintColor  = .white

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "Ortga", style: .plain, target: nil, action: nil)
        initViews()
    }
    private func initViews(){
        view.addSubview(collectionView)
        view.addSubview(backImage1)
        view.sendSubviewToBack(backImage1)
        view.addSubview(backImage2)
        view.sendSubviewToBack(backImage2)
        view.addSubview(backImage3)
        view.sendSubviewToBack(backImage3)
        view.addSubview(bgcImage)
        view.sendSubviewToBack(bgcImage)
        bgcImage.image = UIImage(named: "background")
        bgcImage.contentMode = .scaleAspectFill
        bgcImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        collectionView.backgroundColor = .clear
        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
//        backImage1.image = UIImage(named: "b")
//        backImage1.backgroundColor = .clear
//        backImage1.contentMode = .scaleAspectFit
//        backImage2.image = UIImage(named: "e")
//        backImage2.contentMode = .scaleAspectFit
//        backImage3.image = UIImage(named: "f")
//        backImage3.contentMode = .scaleAspectFit
    
        backImage2.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.bottom.equalToSuperview().offset(-10)
            make.height.equalToSuperview().multipliedBy(0.2)
            make.width.equalToSuperview().multipliedBy(0.5)
        }
        backImage1.snp.makeConstraints { make in
            make.left.equalTo(backImage2.snp.right)
            make.centerY.equalTo(self.backImage2.snp.centerY).offset(-30)
            make.width.equalToSuperview().multipliedBy(0.5)
            make.height.equalToSuperview().multipliedBy(0.2)
        }
        backImage3.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.centerX.equalTo(self.view.snp.right)
            make.width.equalToSuperview().multipliedBy(0.9)
            make.height.equalToSuperview().multipliedBy(0.6)
        }

    }
    

   

}
