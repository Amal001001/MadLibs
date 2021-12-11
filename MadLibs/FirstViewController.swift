//  ViewController.swift
//  MadLibs

import UIKit

class FirstViewController: UIViewController {

    var mainPhrase = "..."
    @IBOutlet weak var phraseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: #selector (navigateToSecondViewController))
        
    }
    
    @objc func navigateToSecondViewController(){

            let destination = storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! SecondViewController
            self.navigationController?.pushViewController(destination , animated: true)

    }
    
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
        phraseLabel.text = mainPhrase
    }
    
}

