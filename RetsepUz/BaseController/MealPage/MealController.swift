//
//  MenuController.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 14/01/22.
//

import UIKit

@available(iOS 11.0, *)
class MealController: UIViewController{
    let backImage = UIImageView()
    
    let model = MealData()
    lazy var collectionView: UICollectionView = {
        let layout = ZoomAndSnapFlowLayout()
        layout.minimumLineSpacing = 50
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(MealCell.self, forCellWithReuseIdentifier: MealCell.identifier)
        return collectionView
    }()
    
    
    

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.tintColor  = .white


    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initViews()
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "Ortga", style: .plain, target: nil, action: nil)
    }
    
    func initViews(){
     
        view.addSubview(collectionView)
        collectionView.backgroundColor = .clear
        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        view.addSubview(backImage)
        view.sendSubviewToBack(backImage)
        backImage.image = UIImage(named: "backimage")
        backImage.contentMode = .scaleAspectFill
        backImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
       
    
        
    }
    
    
    
}
