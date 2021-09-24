//
//  ViewController.swift
//  AppStoreClone
//
//  Created by 이문정 on 2021/08/28.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        NetworkManager.request(target: .search(word: "카카오톡")) { result in
            print(result)
        }
    }
}

