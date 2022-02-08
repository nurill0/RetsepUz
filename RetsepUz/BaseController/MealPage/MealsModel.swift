//
//  MealsModel.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 17/01/22.
//

import UIKit


struct MealData{
    let data: [MealDetailes] = [
        MealDetailes(title: "Makkajo’xoriga ega tovuqli kotlet", titleImage: "one"),
        MealDetailes(title: "Yangi kartoshka va gulkaramdan taom", titleImage: "two"),
        MealDetailes(title: "Kartoshka va go’shtli frikadelkalar", titleImage: "three"),
        MealDetailes(title: "Feta pishlog’i va cherri pomidorili pasta", titleImage: "four"),
        MealDetailes(title: "Karam barglaridan goluptsi", titleImage: "five"),
        MealDetailes(title: "Turkcha laxmadjun", titleImage: "six"),
        MealDetailes(title: "Sarimsoqpiyoz bilan pishirilgan kartoshka", titleImage: "seven"),
        MealDetailes(title: "Tovuqli ramyon", titleImage: "eight"),
        MealDetailes(title: "Go’shtli yupqa", titleImage: "nine"),
        MealDetailes(title: "Sersuv go’shtli nachinkaga ega chebureklar", titleImage: "ten"),
    ]
    func getItem(index: Int)->MealDetailes{
        return data[index]
    }
    func getSize()->Int{
        return data.count
    }
}

struct MealDetailes{
    let title: String
    let titleImage: String
    
    
}
