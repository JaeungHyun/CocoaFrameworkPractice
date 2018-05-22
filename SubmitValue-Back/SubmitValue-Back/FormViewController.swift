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

        // AppDelegate 객체의 인스턴스를 가져옴
        let ad = UIApplication.shared.delegate as? AppDelegate // AppDelegate의 인스턴스를 직접 생성할 수 없으므로 이 구문을 통해 AppDelegate의 인스턴스를 생성한다
        
        // 값을 저장
        ad?.paramEmail = self.email.text
        ad?.paramUpdate = self.isUpdate.isOn
        ad?.paramInterval = self.interval.value
        
       // 이전 화면 복귀
        self.presentingViewController?.dismiss(animated: true)
    }
}
