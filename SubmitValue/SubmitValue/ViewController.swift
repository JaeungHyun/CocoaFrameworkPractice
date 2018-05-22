//
//  ViewController.swift
//  SubmitValue
//
//  Created by JaeUng Hyun on 09/05/2018.
//  Copyright © 2018 JaeUng Hyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var email: UITextField!
    
    @IBOutlet var isUpdate: UISwitch!
    
    @IBOutlet var interval: UIStepper!
    
    @IBOutlet var isUpdateText: UILabel!
    
    @IBOutlet var intervalText: UILabel!
    

    @IBAction func onSwitch(_ sender: UISwitch) {
        if (sender.isOn == true) {
            self.isUpdateText.text = "갱신함"
        } else {
            self.isUpdateText.text = "갱신하지 않음"
        }
    }
    
    
    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        self.intervalText.text = "\(value)분 마다"
    }
    
    @IBAction func onPerformSegue(_ sender: Any) {
        self.performSegue(withIdentifier: "ManualSubmit", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // read destination viewcontroller
        let dest = segue.destination
        
        guard let rvc = dest as? ResultViewController else {
            return
        }
        
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
        
        //    1. 메소드의 매개변수 segue의 속성 destination를 이용하여 목적지 뷰 컨트롤러의 인스턴스 참조를 가져온다.
        //    2. 인스턴스 타입을 UIViewController에서 ResultController 타입으로 캐스팅한다. 실패하면 매소드 실행 종료
        //    3. 캐스팅된 인스턴스 상수 rvc를 이용하여 값 전달
    }

    
    @IBAction func onSubmit(_ sender: Any) {
        // VC2 생성
        // 속성 변수를 참조할 수 없으므로 ResultViewController 타입으로 캐스팅해야함 타입을 캐스팅하면 변수 참조 가능
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController else {
            return
            
        }
        
        // 값 전달
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
        self.navigationController?.pushViewController(rvc, animated: true)
        
    }
    
    
}

