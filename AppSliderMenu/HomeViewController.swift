//
//  HomeViewController.swift
//  AppSliderMenu
//
//  Created by Student on 6/26/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit
protocol HomeViewControllerDelegate: class {
    func clickOpenSileMenu()
}
class HomeViewController: UIViewController {
    
    weak var delegate: HomeViewControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func collBack(_ sender: UIBarButtonItem){
        delegate?.clickOpenSileMenu()
    }

}
