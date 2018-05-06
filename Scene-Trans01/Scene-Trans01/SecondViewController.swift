//
//  SecondViewController.swift
//  Scene-Trans01
//
//  Created by JaeUng Hyun on 06/05/2018.
//  Copyright © 2018 JaeUng Hyun. All rights reserved.
//

import Foundation

import UIKit
class SecondViewController: UIViewController {
    
    @IBAction func back(_ sender: Any) {
        
        // 이전 화면으로 갈 때 present로 호출하면 새로 생성되는 것임
        // 따라서 dismiss로 돌아가야 이전 화면으로 되돌아 갈 수 있음
        self.presentingViewController?.dismiss(animated: true)
        
    }
}
