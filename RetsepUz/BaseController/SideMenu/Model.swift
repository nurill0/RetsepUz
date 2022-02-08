//
//  Model.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 17/01/22.
//

import UIKit

struct SideData{
    let data: [SideDetailes] = [
    SideDetailes(title: "Dastur haqida", imagaName: "information"),
    SideDetailes(title: "Baxolash", imagaName: "rating"),
    SideDetailes(title: "Ulashish", imagaName: "share"),
    SideDetailes(title: "Dasturchi haqida", imagaName: "aboutcoder")
    ]
    func getItem(index: Int)->SideDetailes{
        return data[index]
    }
    func getSize()->Int{
        return data.count
    }
  
}

struct SideDetailes{
    let title: String
    let imagaName: String
}
