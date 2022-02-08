//
//  SideMenuController.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 15/01/22.
//

import UIKit

protocol MenuControllerDelegate {
    func didSelectMenuItem(named: String)
}
class SideMenuController: UIViewController {
    let model = SideData()
    lazy var collectionView: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.contentInset.top = -35   
        collectionView.showsVerticalScrollIndicator = false
        collectionView.register(SideCell.self, forCellWithReuseIdentifier: SideCell.identifier)
        collectionView.register(SideHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: SideHeader.identifier)
        return collectionView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .backgruondBC
        initViews()
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    private func initViews(){
        view.addSubview(collectionView)
        collectionView.backgroundColor = .clear
        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

