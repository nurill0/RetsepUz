//
//  RetsepController.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 17/01/22.
//

import UIKit

@available(iOS 11.0, *)
class RetsepController: UIViewController {
    
    var model = RetsepData()
    var type = 0

    lazy var collectionView: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate   = self
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(RetsepCell.self, forCellWithReuseIdentifier: RetsepCell.identifier)
        return collectionView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        model.getType(type: type)
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "Ortga", style: .plain, target: nil, action: nil)
        view.backgroundColor = .orange
//        let appearance = UINavigationBarAppearance()
//        appearance.backgroundColor = UIColor.white
//        navigationItem.scrollEdgeAppearance = appearance
        title = "Retseplar"
        navigationController?.navigationBar.tintColor  = .black
        view.backgroundColor = .white

        if #available(iOS 11.0, *) {
            initViews()
        } else {
            // Fallback on earlier versions
        }
    }
    @available(iOS 11.0, *)
    private func initViews(){
        
        
        view.addSubview(collectionView)
        collectionView.backgroundColor = .clear
        collectionView.snp.makeConstraints { make in
            make.right.left.equalToSuperview()
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
        }
        
      
    }
}
