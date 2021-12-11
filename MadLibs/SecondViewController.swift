//  SecondViewController.swift
//  MadLibs

import UIKit

class SecondViewController: UIViewController {

    var phrase : String!
    
    @IBOutlet weak var et1: UITextField!
    
    @IBOutlet weak var et2: UITextField!
    
    @IBOutlet weak var et3: UITextField!
    
    @IBOutlet weak var et4: UITextField!
    
    
    @IBAction func submitBtn(_ sender: UIButton) {
        phrase = "We are having a perfectly \(et1.text!) right now. Later we will \(et2.text!) and \(et3.text!) in the \(et4.text!)"
        
        performSegue(withIdentifier: "unwindToMain", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! FirstViewController
        destination.mainPhrase = phrase
    }
    
}
