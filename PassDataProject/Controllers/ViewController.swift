//
//  ViewController.swift
//  PassDataProject
//
//  Created by Елизавета Щербакова on 21.02.2020.
//  Copyright © 2020 Sсherbakova Elizaveta Nikolaevna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func sendPress(_ sender: UIButton) {
        performSegue(withIdentifier: "DetailSegue", sender: nil) // сегу от контроллера указываем в определенном экшене
    }
    
    @IBAction func unwindToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "UnwindSegue" else { return }
        guard let svc = segue.source as? MainViewController else { return }
        self.loginTextField.text = svc.label.text
        
    }
    
    // скрытие клавиатуры
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    // передать значение в следующий контроллер по сеге
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let dvc = segue.destination as? MainViewController else { return }
        dvc.login = loginTextField.text
        
        
    }
    
    
}

