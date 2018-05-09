//
//  ViewController.swift
//  Scene-CustomSegue
//
//  Created by JaeUng Hyun on 08/05/2018.
//  Copyright © 2018 JaeUng Hyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "custom_segue") {
            NSLog("커스텀 세그가 실행됩니다")
        } else if (segue.identifier == "action_segue") {
            NSLog("Action segue is implemented")
        } else {
            NSLog("Unknown segue")
        }
    }
}


