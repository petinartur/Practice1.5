//
//  WelcomeViewController.swift
//  Practice1.5
//
//  Created by Артур Петин on 28.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeMessage: UILabel!
    
    var user = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeMessage.text = "Welcome \(user)"
    }
    
}
