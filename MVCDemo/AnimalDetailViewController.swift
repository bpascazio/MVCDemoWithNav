//
//  AnimalDetailViewController.swift
//  MVCDemo
//
//  Created by Bob Pascazio on 8/31/15.
//  Copyright (c) 2015 travis holt. All rights reserved.
//

import UIKit

class AnimalDetailViewController: UIViewController {

    @IBOutlet weak var animalNameLabel: UILabel!
    
    @IBOutlet weak var animalImage: UIImageView!  ////
    
    var animalTopic:String?
    var animalUIImage:UIImage? //////
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        if let animalTopic_ = animalTopic {
            animalNameLabel.text = animalTopic_
        }
        if let animalUIImage_ = animalUIImage {
            animalImage.image = animalUIImage_
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
