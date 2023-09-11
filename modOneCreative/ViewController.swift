//
//  ViewController.swift
//  modOneCreative
//
//  Created by NATALIE DUSHANE on 9/1/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var doneOutlet: UILabel!
    
    @IBOutlet weak var tenorOutlet: UITextField!
    @IBOutlet weak var peopleOutlet: UITextField!
    
    var people : Int?
    var bass : Int?
    var snare : Int?
    var people2 : Int?
    var tenors : Int?
    var cym : Int?
    var bool = true
    var ag = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tenorOutlet.delegate = self
        peopleOutlet.delegate = self
    }
    
    @IBAction func noAction(_ sender: Any) {
        people = Int(peopleOutlet.text!)
        
        if let p = people{
            people2 = p
            
            bool = true
        }
        else{
            bool = false
            doneOutlet.text = "Please enter valid a valid input"
        }
        
        var tenor = Int(tenorOutlet.text!)
        if case let t = tenor{
            tenors = t
            ag = true
            
        }
        else{
            ag = false
            doneOutlet.text = "Please enter valid a valid input"
        }
        if(bool && ag){
            if(people2! < tenors!){
                doneOutlet.text = "please enter a valid number of tenors"
            }
            else{
                people2 = people2! - tenors!
                snare = Int(ceil(Double(people2!)/3))
                cym = snare!
                bass = people2! - snare! - snare!
                doneOutlet.text = "Snares: \(snare!) Basses: \(bass!) Cymbals: \(cym!)"
            }
        }
        
        
        
    }
    @IBAction func yesAction(_ sender: Any) {
        people = Int(peopleOutlet.text!)
        
        if let p = people{
            people2 = p
            
            bool = true
        }
        else{
            bool = false
            doneOutlet.text = "Please enter valid a valid input"
        }
        
        var tenor = Int(tenorOutlet.text!)
        if case let t = tenor{
            tenors = t
            ag = true
            
        }
        else{
            ag = false
            doneOutlet.text = "Please enter valid a valid input"
        }
        if(bool && ag){
            if(people2! < tenors!){
                doneOutlet.text = "please enter a valid number of tenors"
            }
            else{
                people2 = people2! - tenors!
                snare = Int(ceil(Double(people2!)/4))
                cym = snare!
                bass = people2! - (2 * snare!)
                doneOutlet.text = "Snares: \(snare!) Basses: \(bass!) Cymbals: \(cym!)"
            }
            
            
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        tenorOutlet.resignFirstResponder()
        peopleOutlet.resignFirstResponder()
        return true
    }
}
