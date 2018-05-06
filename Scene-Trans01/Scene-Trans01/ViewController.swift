//
//  ViewController.swift
//  Scene-Trans01
//
//  Created by JaeUng Hyun on 06/05/2018.
//  Copyright © 2018 JaeUng Hyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func moveNext(_ sender: Any) {
       
        //  UIStoryboard 초기화 과정에서 파일을 직접 지정
        //  let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
 
        // 이동할 뷰 컨트롤러 객체를 StoryboardID 정보를 이용하여 참조
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            // 인스턴스 생성
            return
        }
            // 화면 전환할 때의 애니메이션 타입
        uvc.modalTransitionStyle =  UIModalTransitionStyle.coverVertical
        // UIModalTransitionStyle 객체에 enum 타입으로 정의, 4개타입이 있음,
        
        // 인자값으로 뷰 컨트롤러 인스턴스를 넣고 present method 호출
        self.present(uvc, animated: true)
    
        
    }
    
   
}

