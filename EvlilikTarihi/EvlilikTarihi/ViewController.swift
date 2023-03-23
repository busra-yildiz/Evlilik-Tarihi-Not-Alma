//
//  ViewController.swift
//  EvlilikTarihi
//
//  Created by A on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var adTextField: UITextField!
    @IBOutlet weak var evlilikTarihiTextField: UITextField!
    @IBOutlet weak var adLabel: UILabel!
    @IBOutlet weak var evlilikTarihiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let storedAd = UserDefaults.standard.object (forKey: "ad")
        let storedEvlilikTarihi = UserDefaults.standard.object (forKey: "evlilik tarihi")
        if let newAd = storedAd as? String {
            adLabel.text = newAd
        }
        if let newEvlilikTarihi = storedEvlilikTarihi as? String {
            evlilikTarihiLabel.text = newEvlilikTarihi
        }

    }

    @IBAction func kaydetClicked(_ sender: Any) {
        UserDefaults.standard.set(adTextField.text!, forKey: "ad")
        UserDefaults.standard.set(evlilikTarihiTextField.text!, forKey: "evlilik tarihi")

        adLabel.text = "Ad: \(adTextField.text!)"
        evlilikTarihiLabel.text = "Evlilik Tarihi: \(evlilikTarihiTextField.text!)"
    }
    
    @IBAction func silClicked(_ sender: Any) {
        let storedAd = UserDefaults.standard.object (forKey: "ad")
        let storedEvlilikTarihi = UserDefaults.standard.object (forKey: "evlilik tarihi")
        if ( storedAd as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "ad")
            adLabel.text = "Ad: "
            
        }

        if ( storedEvlilikTarihi as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "evlilik tarihi")
            evlilikTarihiLabel.text = "Evlilik Tarihi: "
        }
    }
}

