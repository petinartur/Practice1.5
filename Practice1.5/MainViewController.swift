//
//  MainViewController.swift
//  Practice1.5
//
//  Created by Артур Петин on 28.10.2021.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let login = "Tim"
    private let password = "qwerty123"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeWC = segue.destination as? WelcomeViewController else { return }
        welcomeWC.user = login
    }
    
    @IBAction func loginButtonPressed() {
        if loginTextField.text != login || passwordTextField.text != password {
            showAlert(with: "BE-BE-BE", and: "wrong password or login")
        }
    }
    @IBAction func forgetUserButton() {
        showAlert(with: "Your login", and: "\(login)")
    }
    
    @IBAction func forgetPasswordButton() {
        showAlert(with: "Your password", and: "\(password)")
    }
    
    @IBAction func unwind(for seague: UIStoryboardSegue) {
        passwordTextField.text = nil
        loginTextField.text = nil
    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

// MARK: - Private Methods
extension MainViewController {
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

