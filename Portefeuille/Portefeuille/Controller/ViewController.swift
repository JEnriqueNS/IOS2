//
//  ViewController.swift
//  Portefeuille
//
//  Created by Jesus Enrique Nava Sanchez on 30/11/2018.
//  Copyright © 2018 Jesus Enrique Nava Sanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var table: UITableView!
        
    @IBOutlet weak var dPicker: UIDatePicker!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var inputTextField: UITextField!
    private var datePicker:UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dPicker.addTarget(self, action: #selector(ViewController.dateChange(datepicker:)), for: .valueChanged)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.viewTapped(gestureRecognizer:)))
        view.addGestureRecognizer(tapGesture)
        self.view.addSubview(dPicker)
        label.textAlignment = NSTextAlignment.center
        label.textColor = UIColor.black
        label.text = "500,00 €"
        label.adjustsFontSizeToFitWidth = true
        self.view.addSubview(label)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer)
    {
        
    }
    
    @objc func dateChange(datepicker: UIDatePicker)
    {
        label.text = "holaaaaa"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
