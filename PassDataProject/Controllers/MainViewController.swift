//
//  MainViewController.swift
//  PassDataProject
//
//  Created by Елизавета Щербакова on 21.02.2020.
//  Copyright © 2020 Sсherbakova Elizaveta Nikolaevna. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var login: String!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func logOutAction(_ sender: UIButton) {
        performSegue(withIdentifier: "UnwindSegue", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = login else { return }
        label.text = "Hello, \(login)!"
    }

}
