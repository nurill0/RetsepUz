//
//  SideMenuExtension.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 19/01/22.
//

import UIKit
@available(iOS 11.0, *)
extension SideMenuController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    @objc func shareApp()->Void{
            let someText:String = "Bizning dasturimiz orqali mazali taom va shirinliklar tayyorlang!"
            let objectsToShare:URL = URL(string: "https://apps.apple.com/app/apple-store/id" + "\(Constants.appId)")!
            let sharedObjects:[AnyObject] = [objectsToShare as AnyObject,someText as AnyObject]
            let activityViewController = UIActivityViewController(activityItems : sharedObjects, applicationActivities: nil)
            activityViewController.popoverPresentationController?.sourceView = self.view
            
            activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook,UIActivity.ActivityType.postToTwitter,UIActivity.ActivityType.mail]
            self.present(activityViewController, animated: true, completion: nil)
            
        }
    @objc func rateApp()->Void{
        let url = URL(string: "https://apps.apple.com/app/apple-store/id" + "\(Constants.appId)")!
        UIApplication.shared.open(url)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.getSize()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SideCell.identifier, for: indexPath) as! SideCell
        cell.imageSing.image = UIImage(named: model.getItem(index: indexPath.item).imagaName)
        cell.titleLabel.text = model.getItem(index: indexPath.item).title
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if self.view.frame.height>740{
            return CGSize(width: self.collectionView.frame.width, height: 80)
        }
        else if view.frame.height<670{
            return CGSize(width: self.collectionView.frame.width, height: 50)
        }
        else{
            return CGSize(width: self.collectionView.frame.width, height: 60)
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.item == 0{
            let vc = AboutAppController()
            vc.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(vc, animated: true)
        }
        else if indexPath.item == 1{
            rateApp()
        }
        else if indexPath.item == 2{
            shareApp()

        }
        else{
            let vc = AboutProgrammerController()
            vc.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: SideHeader.identifier, for: indexPath) as! SideHeader
        
        
        return header
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: self.collectionView.frame.width, height: 270)
    }
    
}


