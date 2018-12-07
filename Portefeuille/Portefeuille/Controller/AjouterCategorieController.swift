//
//  AjouterCategorieController.swift
//  Portefeuille
//
//  Created by Eric Duong on 03/12/2018.
//  Copyright © 2018 Jesus Enrique Nava Sanchez. All rights reserved.
//

import UIKit

class AjouterCategorieController: UIViewController {
    
    var categories:[Categories]!
    
    @IBOutlet weak var CategoryInputText: UITextField!
    @IBAction func AddCategoryButton(_ sender: UIButton) {
        let newCategorie = Categories(title: CategoryInputText.text!, createdAt: Date(), itemIdentifier: UUID())
        self.categories.append(newCategorie)
        let addAlert = UIAlertController(title: categories[1].getTitle(), message:"Successfully added",
                                         preferredStyle: .alert)
        addAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(addAlert, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func loadData(){
        categories = [Categories]()
        categories = DataManager.loadAll(Categories.self).sorted(by: {
            $0.createdAt < $1.createdAt
        })
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer){
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
