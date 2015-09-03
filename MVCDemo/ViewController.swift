//
//  ViewController.swift
//  MVCDemo
//
//  Created by trvslhlt on 7/1/15.
//  Copyright (c) 2015 travis holt. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var items = [Discussable]() { didSet { tableView.reloadData() } }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageUnknown:UIImage? = UIImage(named: "Unknown")
        let imageDog:UIImage? = UIImage(named: "Dog")
        items = [
            Animal(name: "Dog", image:imageDog),
            Animal(name: "Cat", image:imageUnknown),
            Animal(name: "Fish", image:imageUnknown),
            Animal(name: "Rabbit", image:imageUnknown) ]
        
        tableView.delegate = self
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let vc:AnimalDetailViewController = segue.destinationViewController as! AnimalDetailViewController
        
        let topic = sender as! Discussable
        
        vc.animalTopic = topic.topic
        
    }
    
    //MARK: UITableViewDelegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        performSegueWithIdentifier("animalDetailSegue", sender: items[indexPath.row] as? AnyObject)
    }

    //MARK: UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! DiscussableCell
        cell.configureWithItem(items[indexPath.row])
        return cell
    }
}

