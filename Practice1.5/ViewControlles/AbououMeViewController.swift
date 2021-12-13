//
//  AbououMeViewController.swift
//  Practice1.5
//
//  Created by Артур Петин on 10.12.2021.
//

import UIKit

class AbououMeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user: User!
    var name = ""
    var aboutMe = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "Привет! Меня зовут \(user.person.firstName)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let myPageVC = segue.destination as? MyPageViewController else {return}
        myPageVC.user = user
                
    }

}
