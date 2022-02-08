//
//  CakeRetsepController.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 19/01/22.
//

import UIKit

@available(iOS 11.0, *)
class CakeRetsepController: UIViewController {
    let cakeImage = UIImageView()
    let definition = UITextView()
    var type = 0
    var model = CakeRetsepData()
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "Ortga", style: .plain, target: nil, action: nil)
        view.backgroundColor = .orange
//        let appearance = UINavigationBarAppearance()
//        appearance.backgroundColor = UIColor.white
//        navigationItem.scrollEdgeAppearance = appearance
        title = "Retseplar"
        navigationController?.navigationBar.tintColor  = .black
        view.backgroundColor = .white
        //model.getItem(type: type)
        
    }
    private func initViews(){
        view.addSubview(cakeImage)
        view.addSubview(definition)
        cakeImage.image = UIImage(named: model.getItem(index: type).imageName)
        cakeImage.contentMode = .scaleAspectFit
        cakeImage.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            make.right.left.equalToSuperview().inset(5)
            make.height.equalTo(200)
        }
        definition.text = model.getItem(index: type).definition
        definition.backgroundColor = .white
        definition.textAlignment = .justified
        definition.textColor = .black
        definition.isEditable = false
        definition.showsVerticalScrollIndicator = false
        definition.font = .systemFont(ofSize: 20, weight: .semibold)
        definition.snp.makeConstraints { make in
            make.top.equalTo(cakeImage.snp.bottom)
            make.right.left.equalToSuperview().inset(2)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
        }
    }
}
