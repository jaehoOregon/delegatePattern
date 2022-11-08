//
//  ViewController.swift
//  delegatePattern
//
//  Created by Jaeho Jung on 2022/11/08.
//

import UIKit

class ViewController: UIViewController, textTransferDelegate {

    @IBOutlet weak var firstVCLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func didEditingChanged(data: String) {
        firstVCLabel.text = data
        print("test\(data)")
    }

    @IBAction func btnDidTapped(_ sender: UIButton) {
        
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        secondVC.delegate = self
        present(secondVC, animated: true, completion: nil)
        
    }
}






