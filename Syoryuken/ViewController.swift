//
//  ViewController.swift
//  Syoryuken
//
//  Created by 杉浦陽樹 on 2022/10/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var syoryuken: UIImageView!

        var imageArraySyoryuken : Array<UIImage> = []

        override func viewDidLoad() {
            super.viewDidLoad()

            let initialImage = UIImage(named: "attack1")
            syoryuken.image = initialImage

            // Do any additional setup after loading the view.
            while let syoryuken = UIImage(named: "attack\(imageArraySyoryuken.count+1)") {
                imageArraySyoryuken.append(syoryuken)
            }
        }

        @IBAction func button(_ sender: Any) {
            syoryuken.animationImages = imageArraySyoryuken
            syoryuken.animationDuration = 1.7
            syoryuken.animationRepeatCount = 1
            syoryuken.startAnimating()
        }
    
}
