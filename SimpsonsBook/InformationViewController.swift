//
//  InformationViewController.swift
//  SimpsonsBook
//
//  Created by Kemal Özyön on 30.06.2024.
//

import UIKit

class InformationViewController: UIViewController {

    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var name1 = String()
    var image1 = UIImage()
    var job1 = String()
    var age1 = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ageLabel.text = String(age1)
        jobLabel.text = job1
        nameLabel.text = name1
        imageView.image = image1
    }
    


}
