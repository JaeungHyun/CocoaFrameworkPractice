//
//  SecondViewController.swift
//  Scene-Trans02
//
//  Created by JaeUng Hyun on 06/05/2018.
//  Copyright © 2018 JaeUng Hyun. All rights reserved.
//

import Foundation

import UIKit
class SecondViewController: UIViewController {
    
    
    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    @IBAction func back2(_ sender: Any) {
        _ = self.navigationController?.popViewController(animated: true) // _ 는 익명변수, 굳이 변수에 값을 할당하지 않아도 된다는 뜻
    }
}
