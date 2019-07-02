//
//  ViewController.swift
//  colorChange
//
//  Created by EndoTakashi on 2019/07/02.
//  Copyright © 2019 tak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelA: UILabel!
    @IBOutlet weak var colorButton: UIButton!
    
    var labelColor:UIColor = UIColor.blue
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelA.backgroundColor = labelColor
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let colorController = segue.destination as! colorViewController
        colorController.chathColor = labelA.backgroundColor
    }


}

