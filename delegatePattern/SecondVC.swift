//
//  SecondVC.swift
//  delegatePattern
//
//  Created by Jaeho Jung on 2022/11/08.
//

import UIKit

//protocol textTransferDelegate {
//    func didEditingChanged(data: String)
//}

protocol textTransferDelegate {
    func didEditingChanged(data: String)
}

class SecondVC: UIViewController {
        
    @IBOutlet weak var dataTextField: UITextField!
    
    var delegate: textTransferDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func btnDidTapped(_ sender: UIButton) {
        
        if let inputText = dataTextField.text {
            delegate?.didEditingChanged(data: inputText)
            print(inputText)
        }
        dismiss(animated: true, completion: nil)
        
    }
}

