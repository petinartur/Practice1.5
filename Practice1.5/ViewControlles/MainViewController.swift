//
//  MainViewController.swift
//  Practice1.5
//
//  Created by Артур Петин on 28.10.2021.
//

import UIKit

class MainViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let persons = User.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginTextField.delegate = self
        loginTextField.returnKeyType = .next
        passwordTextField.delegate = self
        passwordTextField.returnKeyType = .done
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {return}
        guard let viewControllers = tabBarController.viewControllers else {return}
         for viewController in viewControllers {
            if let welcomVC = viewController as? WelcomeViewController {
                welcomVC.user = persons
            } else if let navigationVC = viewController as? UINavigationController {
                let aboutUserVC = navigationVC.topViewController as! AbououMeViewController
                aboutUserVC.user = persons
            }
        }
    }
    
    @IBAction func loginButtonPressed() {
        if loginTextField.text != persons.userName || passwordTextField.text != persons.password {
            showAlert(with: "BE-BE-BE", and: "wrong password or login")
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        
    }
    
    @IBAction func forgetUserButton() {
        showAlert(with: "Your login", and: "\(persons.userName)")
    }
    
    @IBAction func forgetPasswordButton() {
        showAlert(with: "Your password", and: "\(persons.password)")
    }
    
    @IBAction func unwind(for seague: UIStoryboardSegue) {
        passwordTextField.text = nil
        loginTextField.text = nil
    }
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
        
    // MARK: - Методы для работы с клавиатурой
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            loginButtonPressed()
        }
        return true
    }

}
