//
//  MyPageViewController.swift
//  Practice1.5
//
//  Created by Артур Петин on 10.12.2021.
//

import UIKit

class MyPageViewController: UIViewController {

    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var aboutMeLabel: UILabel!
  
    var user: User!
    override func viewDidLoad() {
        super.viewDidLoad()

        avatarImage.image = UIImage(named: user.person.picture)
        aboutMeLabel.text = "\(user.person.aboutPerson)"
    }
    

}
