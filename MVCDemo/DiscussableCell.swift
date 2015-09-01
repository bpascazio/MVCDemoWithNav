//
//  DiscussableCell.swift
//  MVCDemo
//
//  Created by trvslhlt on 7/1/15.
//  Copyright (c) 2015 travis holt. All rights reserved.
//

import UIKit

protocol Discussable {
    var topic: String { get }
    var interestingFact: String { get }
    var image: UIImage? { get }
}

class DiscussableCell: UITableViewCell {
        
    func configureWithItem(item: Discussable) {
        textLabel?.text = item.topic
        detailTextLabel?.text = item.interestingFact
    }

}
