//
//  MyPageViewController.swift
//  Practice1.5
//
//  Created by Артур Петин on 10.12.2021.
//

import UIKit

class MyPageViewController: UIViewController {

    
    @IBOutlet weak var aboutMeLabel: UILabel!
    
    var aboutMe = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        aboutMeLabel.text = "\(aboutMe)"
    }
    

}
