//
//  FormViewController.swift
//  SubmitValue-Back
//
//  Created by JaeUng Hyun on 22/05/2018.
//  Copyright © 2018 JaeUng Hyun. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {
    
    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    
    // Submit을 클릭했을 때 실행되는 메소드
    @IBAction func onSubmit(_ sender: Any) {
        // UserDefault 객체 인스턴스 가져옴
        let ud = UserDefaults.standard
        
        // 값 저장
        ud.set(self.email.text, forKey: "email")
        ud.set(self.isUpdate.isOn, forKey: "isUpdate")
        ud.set(self.interval.value, forKey: "interval")
        
        // 이전 화면 전환
        self.presentingViewController?.dismiss(animated: true)
    }
}
