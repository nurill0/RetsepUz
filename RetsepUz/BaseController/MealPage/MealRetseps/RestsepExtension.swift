//
//  RestsepExtension.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 17/01/22.
//

import UIKit

@available(iOS 11.0, *)
extension RetsepController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RetsepCell.identifier, for: indexPath) as! RetsepCell
      //  model.getType(type: type)
        cell.mealImage.image = UIImage(named: model.getItem(index: 0).imageName)
//        cell.definitionLabel.text = model.getItem(index: 0).definition
//        cell.productsLabel.text = model.getItem(index: 0).products
//        cell.stepsLabel.text = model.getItem(index: 0).steps
        cell.textView.text = "\t\t\tTAOM HAQIDA QISQACHA:\n" + model.getItem(index: 0).definition  + "\n\n\t\t\tKERAKLI MAHSULOTLAR:\n" + model.getItem(index: 0).products + "\n\n\t\t\tTAYYORLANISH YO`LI:\n" + model.getItem(index: 0).steps
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height1 = model.data[indexPath.item].definition.height(withConstrainedWidth: self.collectionView.frame.width-20, font: .systemFont(ofSize: 20, weight: .heavy))
        let height2 = model.data[indexPath.item].products.height(withConstrainedWidth: self.collectionView.frame.width-20, font: .systemFont(ofSize: 20, weight: .semibold))
        let height3 = model.data[indexPath.item].products.height(withConstrainedWidth: self.collectionView.frame.width-20, font: .systemFont(ofSize: 18, weight: .regular))
        let height = height1 + height2 + height3 + 255
        return CGSize(width: collectionView.frame.width-20, height: self.collectionView.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    
    
    
}
