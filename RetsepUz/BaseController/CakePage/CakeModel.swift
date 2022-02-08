//
//  CakeModel.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 18/01/22.
//

import UIKit
import UIKit


struct CakeData{
    let data: [CakeDetailes] = [
        CakeDetailes(title: "Qulupnyga ega biskitli rulet", titleImage: "c1"),
        CakeDetailes(title: "Qulupnayli keks", titleImage: "c2"),
        CakeDetailes(title: "Olmaga ega tvorogli pirog", titleImage: "c3"),
        CakeDetailes(title: "Merengaga ega qumoq pechenye", titleImage: "c4"),
        CakeDetailes(title: "Yeryong’oqli havodor pechenye", titleImage: "c5"),
        CakeDetailes(title: "Karamel va yong’oqli tort", titleImage: "c6"),
        CakeDetailes(title: "Tvorogli krendellar", titleImage: "c7"),
        CakeDetailes(title: "«Gulcha» olmali pirogi", titleImage: "c8"),
        CakeDetailes(title: "Turshak va yong’oqli pirog", titleImage: "c9"),
        CakeDetailes(title: "Shokoladli va karamelli fransuzcha grenkalar", titleImage: "c10"),
    ]
    func getItem(index: Int)->CakeDetailes{
        return data[index]
    }
    func getSize()->Int{
        return data.count
    }
}

struct CakeDetailes{
    let title: String
    let titleImage: String
    
    
}
