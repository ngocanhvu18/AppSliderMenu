//
//  ViewController.swift
//  AppSliderMenu
//
//  Created by Student on 6/26/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,HomeViewControllerDelegate {
    
    @IBOutlet weak var viewSlider: UIView!
    @IBOutlet weak var clickButton: UIButton!
    @IBOutlet weak var leading: NSLayoutConstraint!
    var homeViewControllerDelegate: HomeViewController?
    var isOpenMenu: Bool = false{
        didSet{
            leading.constant = isOpenMenu ? 0 : -UIScreen.main.bounds.width * 2/3
            clickButton.isHidden = !isOpenMenu
            UIView.animate(withDuration: 0.35){
                self.view.layoutIfNeeded()
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        leading.constant = -UIScreen.main.bounds.width * 2/3
        homeViewControllerDelegate?.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onClickButton(_ sender: UIButton){
        isOpenMenu = !isOpenMenu
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "HomeViewController"{
            if let navigation = segue.destination as? UINavigationController{
                homeViewControllerDelegate = navigation.topViewController as? HomeViewController
            }
        }
    }
    func clickOpenSileMenu() {
        isOpenMenu = !isOpenMenu
    }
}

