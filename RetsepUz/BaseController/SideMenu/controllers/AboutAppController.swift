//
//  AboutAppController.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 19/01/22.
//

import UIKit

@available(iOS 11.0, *)
class AboutAppController: UIViewController {

    let aboutLabel = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .backgruondBC
        initViews()
        title = "Dastur haqida"
        navigationItem.leftBarButtonItem?.isEnabled = false
        navigationController?.setNavigationBarHidden(true, animated: true)

        
    }
    private func initViews(){
        view.addSubview(aboutLabel)
        aboutLabel.text = """
    Bu dasturimizda turli hil mazali taom va shirinliklar tayyorlash usullari va unga kerakli mahsulotlar ro`yxati pishirish ketma-ketligi berilgan.Bunda uy sharoitlarida tayyorlash mumkin.
    Dasturda taomlar pishirish yo`llari hamda ularga ketadigan mahsulotlar ro`yxatidan tashqari taom va shirinliklar rasmlari mavjud.
"""
        aboutLabel.textContainerInset = UIEdgeInsets(top: 60, left: 10, bottom: 30, right: 10)
        aboutLabel.textColor = .black
        aboutLabel.isEditable = false
        aboutLabel.textAlignment = .center
        aboutLabel.backgroundColor = .white.withAlphaComponent(0.5)
        aboutLabel.font =  .systemFont(ofSize: 25, weight: .heavy)
        aboutLabel.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(10)
            make.right.left.equalToSuperview().inset(10)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-10)
        }
        
    }
    

   

}
