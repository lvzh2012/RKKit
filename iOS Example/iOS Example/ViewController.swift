//
//  ViewController.swift
//  iOS Example
//
//  Created by zhenhua.lv on 2025/5/23.
//

import UIKit
import RKKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let map: [String: Any] = ["A": 2]
        print(map["B", 3], map["A", 4])
    }
}

