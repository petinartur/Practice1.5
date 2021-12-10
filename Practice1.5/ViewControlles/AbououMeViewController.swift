//
//  AbououMeViewController.swift
//  Practice1.5
//
//  Created by Артур Петин on 10.12.2021.
//

import UIKit

class AbououMeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var name = ""
    var aboutMe = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "Привет! Меня зовут \(name)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let myPageVC = segue.destination as? MyPageViewController else {return}
        myPageVC.aboutMe = aboutMe
                
    }

}
