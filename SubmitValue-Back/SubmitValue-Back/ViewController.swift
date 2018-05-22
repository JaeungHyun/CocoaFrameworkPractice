//
//  ViewController.swift
//  SubmitValue-Back
//
//  Created by JaeUng Hyun on 22/05/2018.
//  Copyright © 2018 JaeUng Hyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    

    
    // 화면이 표시될 때 마다 실행되는 메소드
    override func viewWillAppear(_ animated: Bool) {
        let ad = UIApplication.shared.delegate as? AppDelegate
        
        if let email = ad?.paramEmail {
            resultEmail.text = email
        }
        if let update = ad?.paramUpdate {
            resultUpdate.text = update==true ? "자동갱신":"자동갱신안함"
        }
        if let interval = ad?.paramInterval {
            resultInterval.text = "\(Int(interval))분마다"
        }
    }
}

