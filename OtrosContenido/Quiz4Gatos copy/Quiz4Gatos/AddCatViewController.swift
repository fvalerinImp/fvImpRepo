//
//  AddCatViewController.swift
//  Quiz4Gatos
//
//  Created by Federico Valerin on 5/30/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

protocol clsAddCatProtocol : class {
    func agregarObjeto( pObjeto: clsCat )
}


class AddCatViewController: UIViewController {

    
    @IBOutlet weak var txtNameCat: UITextField!

    weak var delegado : clsAddCatProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addSaveButton()
        self.title = "Add Cat"
        
    }
    
    func addSaveButton() {
        let saveAction = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(salvarObjetoAction))
        navigationItem.rightBarButtonItem = saveAction
        
    }
    
    func salvarObjetoAction() {
        //      let news = News(titleNews: titleTextField.text!, descriptionNews: descriptionTextField.text!, createdAt: Date())
        
        //        delegate?.addNews(news: news)
        
        
        
           let objeto = clsCat(pNombre: txtNameCat.text!)
        
//        let objeto = clsDog()
//        objeto.name = txtNombre.text!
//        objeto.ImageName = "perro" + sNumero
//        objeto.color = txtColor.text!
        
        delegado?.agregarObjeto(pObjeto: objeto)
        
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
