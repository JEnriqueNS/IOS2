//
//  AjouterDepenseController.swift
//  Portefeuille
//
//  Created by Eric Duong on 03/12/2018.
//  Copyright © 2018 Jesus Enrique Nava Sanchez. All rights reserved.
//

import UIKit

class AjouterDepenseController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
/////////////////////////////////////////////////////////////////////////////// DatePicker
    @IBOutlet weak var InputDateField: UITextField!
    private var datePicker: UIDatePicker?
/////////////////////////////////////////////////////////////////////////////// DatePicker // END
    
/////////////////////////////////////////////////////////////////////////////// Currency
    @IBOutlet weak var CurrencyTextField: UITextField!
    let devise = Devise()
/////////////////////////////////////////////////////////////////////////////// Currency // END
    
/////////////////////////////////////////////////////////////////////////////// Category
    @IBOutlet weak var CategoryInputField: UITextField!
    private var categoryPicker: UIPickerView?
    var category = ["Nourriture", "Sport", "Santé"]
/////////////////////////////////////////////////////////////////////////////// Category // END
    
/////////////////////////////////////////////////////////////////////////////// Description
    @IBOutlet weak var DescriptionInputText: UITextField!
/////////////////////////////////////////////////////////////////////////////// Description // END
    
/////////////////////////////////////////////////////////////////////////////// AddButton
    @IBAction func AddButton(_ sender: UIButton) {
        
    }
/////////////////////////////////////////////////////////////////////////////// AddButton // END
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /////////////////////////////////////////////////////////////////////////////// DatePicker
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(AjouterDepenseController.dateChanged(datePicker:)), for: .valueChanged)
        InputDateField.inputView = datePicker
        
        let tapeGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapeGesture)
        /////////////////////////////////////////////////////////////////////////////// DatePicker // END
        
        /////////////////////////////////////////////////////////////////////////////// Currency
        CurrencyTextField.delegate = self
        CurrencyTextField.placeholder = devise.updateAmount()
        /////////////////////////////////////////////////////////////////////////////// Currency // END
        
        /////////////////////////////////////////////////////////////////////////////// Category
        categoryPicker = UIPickerView()
        categoryPicker?.delegate = self
        categoryPicker?.dataSource = self
        
        CategoryInputField.inputView = categoryPicker
        /////////////////////////////////////////////////////////////////////////////// Category // END
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer){
        view.endEditing(true)
    }
    
/////////////////////////////////////////////////////////////////////////////// DatePicker
    @objc func dateChanged(datePicker: UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        InputDateField.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
/////////////////////////////////////////////////////////////////////////////// DatePicker // END
    
/////////////////////////////////////////////////////////////////////////////// Currency
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        var amt_nouveau = devise.getamt()
        if let digit = Int(string){
            amt_nouveau = amt_nouveau * 10 + digit
            devise.setamt(amt: amt_nouveau)
            CurrencyTextField.text = devise.updateAmount()
            
        }
        
        if string == ""{
            amt_nouveau = amt_nouveau / 10
            devise.setamt(amt: amt_nouveau)
            CurrencyTextField.text = devise.updateAmount()
        }
        return false
    }
/////////////////////////////////////////////////////////////////////////////// Currency // END
    
/////////////////////////////////////////////////////////////////////////////// Category
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return category.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return category[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        CategoryInputField.text = category[row]
        self.view.endEditing(false)
    }
/////////////////////////////////////////////////////////////////////////////// Category // END
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
