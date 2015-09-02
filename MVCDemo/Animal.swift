//
//  Animal.swift
//  MVCDemo
//
//  Created by trvslhlt on 7/1/15.
//  Copyright (c) 2015 travis holt. All rights reserved.
//

import UIKit

class Animal: NSObject, Discussable {
    
    //Discussable
    var topic: String { return "How about \(name)" }
    var interestingFact: String = "...searching..."
    var image: UIImage?
    
    let name: String
    
    init(name: String, image:UIImage?) {
        self.name = name
        self.image = image
        super.init()
        searchForInterestingFact()
    }
    
    private func searchForInterestingFact() {
        interestingFact = "\(rand())"
    }
    
}
