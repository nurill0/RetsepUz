//
//  ViewController.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 14/01/22.
//

import UIKit
import Lottie
import SnapKit

@available(iOS 13.0, *)
class ViewController: UIViewController {
    
    var animationView: AnimationView?
    var timer        :         Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initAnimations()
        initTimer()
        view.backgroundColor = .white
    }
    
    private func initAnimations(){
        animationView = .init(name: "launch")
        animationView?.frame = view.bounds
        animationView?.animationSpeed = 0.8
        view.addSubview(animationView!)
        animationView?.play()
    }
    
    func initTimer(){
        timer = Timer.scheduledTimer(timeInterval: 2.3, target: self, selector: #selector(goWelcomeContoller), userInfo: nil, repeats: true)
    }
    
    @objc func goWelcomeContoller(){
        let vc = ChooseController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        navigationItem.leftBarButtonItem?.isEnabled = false
        navigationController?.pushViewController(vc, animated: true)
        self.timer.invalidate()
    }
    
}

