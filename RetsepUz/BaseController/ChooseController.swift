//
//  ChooseController.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 18/01/22.
//

import UIKit
import SideMenu

@available(iOS 13.0, *)
class ChooseController: UIViewController,MenuControllerDelegate  {
    let titleImage = UIImageView()
    let backImage1 = UIImageView()
    let backImage2 = UIImageView()
    let backImage3 = UIImageView()
    let backImage4 = UIImageView()
    
    func didSelectMenuItem(named: String) {}
    let mealButton = MyButton(title: "Quyuq taomlar", fontSize: 22, bgcColor: .orange.withAlphaComponent(0.5), titleColor: .white, radius: 18, borderWidth: 0.5)
    let cacesButton = MyButton(title: "Shirinliklar", fontSize: 22, bgcColor: .systemPink, titleColor: .white, radius: 18, borderWidth: 0.5)
 
 
    let stackView = UIStackView()
    var isSideMenuClosed = true
    var sideMenu: SideMenuNavigationController?
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "Ortga", style: .plain, target: nil, action: nil)
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        initSideMenu()
        initButtons()
        initImages()
        initStackView()
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "menu")?.withRenderingMode(.alwaysOriginal).withTintColor(.black), style: .plain, target: self, action: #selector(openSideMenu))
    }
    
    private func initSideMenu(){
        var menu = SideMenuController()
        sideMenu = SideMenuNavigationController(rootViewController: menu)
        sideMenu?.leftSide = true
        sideMenu?.menuWidth = (view.frame.width)*3/4
        sideMenu?.setNavigationBarHidden(true, animated: false)
        SideMenuManager.default.leftMenuNavigationController = sideMenu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        sideMenu?.navigationBar.clipsToBounds = true
        sideMenu?.navigationBar.barTintColor = #colorLiteral(red: 0.7175473571, green: 0.2955725491, blue: 0.9618186355, alpha: 1)
    }
    func initStackView(){
        view.addSubview(stackView)
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.axis = .vertical
        stackView.backgroundColor = .clear
        stackView.spacing = 20
      if view.frame.height>740{
          stackView.snp.makeConstraints { make in
              make.centerY.equalToSuperview()
              make.right.left.equalToSuperview().inset(10)
          }
        }
        else{
            stackView.snp.makeConstraints { make in
                make.centerY.equalToSuperview()
                make.right.left.equalToSuperview().inset(10)
            }
        }
        
        stackView.addArrangedSubview(mealButton)
        stackView.addArrangedSubview(cacesButton)
       
    }
    func initImages(){
        view.addSubview(titleImage)
        //view.sendSubviewToBack(titleImage)
        view.addSubview(backImage1)
        view.sendSubviewToBack(backImage1)
        view.addSubview(backImage2)
        view.sendSubviewToBack(backImage2)
        view.addSubview(backImage3)
        view.sendSubviewToBack(backImage3)
        view.addSubview(backImage4)
        view.sendSubviewToBack(backImage4)
        
        titleImage.image = UIImage(named: "RetsepUz")
        titleImage.contentMode = .scaleAspectFit
        
        backImage1.image = UIImage(named: "a")
        backImage1.contentMode = .scaleAspectFit

        backImage2.image = UIImage(named: "d")
        backImage2.contentMode = .scaleAspectFit
        
        backImage3.image = UIImage(named: "c")
        backImage3.contentMode = .scaleAspectFit

        backImage4.image = UIImage(named: "b")
        backImage4.contentMode = .scaleAspectFit
        
        titleImage.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(20)
            make.right.left.equalToSuperview().inset(20)
            make.height.equalTo(90)
        }
        backImage3.snp.makeConstraints { make in
            make.right.bottom.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.8)
            make.height.equalToSuperview().multipliedBy(0.3)
        }
        backImage2.snp.makeConstraints { make in
            make.top.equalTo(titleImage.snp.bottom).offset(-25)
            make.left.equalToSuperview().offset(-20)
            make.width.equalToSuperview().multipliedBy(0.8)
            make.height.equalToSuperview().multipliedBy(0.4)
        }
        backImage1.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(-20)
            make.top.equalTo(cacesButton.snp.bottom)
            make.height.equalToSuperview().multipliedBy(0.4)
            make.width.equalToSuperview().multipliedBy(0.6)
        }
      
        
        
    }
    func initButtons(){
        view.addSubview(mealButton)
        view.addSubview(cacesButton)
      
        mealButton.titleLabel?.font = .systemFont(ofSize: 22, weight: .heavy)
        cacesButton.titleLabel?.font = .systemFont(ofSize: 22, weight: .heavy)
      
        mealButton.snp.makeConstraints { make in
            make.height.equalTo(70)
        }
        cacesButton.snp.makeConstraints { make in
            make.height.equalTo(70)
        }
        
        mealButton.addTarget(self, action: #selector(goMealVC), for: .touchUpInside)
        cacesButton.addTarget(self, action: #selector(goCacesVC), for: .touchUpInside)
    }
    @objc func goMealVC(){
        let vc  = MealController()
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
    }
    @objc func goCacesVC(){
        let vc  = CakeController()
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
    }
    @objc func openSideMenu(){
        present(sideMenu!, animated: true, completion: nil)
    }
    
    
    
}
