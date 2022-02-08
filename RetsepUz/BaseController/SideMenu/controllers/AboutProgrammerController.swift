//
//  AboutProgrammerController.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 19/01/22.
//

import UIKit

@available(iOS 11.0, *)
class AboutProgrammerController: UIViewController {

    let aboutLabel = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .backgruondBC
        initViews()
        if #available(iOS 13.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.backgroundColor = UIColor.white
            navigationItem.scrollEdgeAppearance = appearance
        } else {
            // Fallback on earlier versions
        }
       
        title = "Dasturchi haqida"
        navigationController?.setNavigationBarHidden(true, animated: true)

    }
    private func initViews(){
        view.addSubview(aboutLabel)
        aboutLabel.text = """

    https://github.com/nurill0


    https://www.linkedin.com/in/nurillo-domlajonov-609a69226/


    https://t.me/Nurillo_Domlajonov

    Mail: nurillod23@mail.ru
"""
        aboutLabel.textContainerInset = UIEdgeInsets(top: 60, left: 10, bottom: 40, right: 10)
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
