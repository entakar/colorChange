//
//  colorViewController.swift
//  colorChange
//
//  Created by EndoTakashi on 2019/07/02.
//  Copyright © 2019 tak. All rights reserved.
//

import UIKit

class colorViewController: UIViewController {

    @IBOutlet weak var rebButton: UIButton!
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var selectColorLabel: UILabel!
    
    var selectColor: UIColor!
    var chathColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let chathColorRGB = chathColor.cgColor.components!
        redSlider.value = Float(chathColorRGB[0])
        greenSlider.value = Float(chathColorRGB[1])
        blueSlider.value = Float(chathColorRGB[2])
        changeColorAction()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func redSliderAction(_ sender: Any) {
        changeColorAction()
    }
    @IBAction func greenSliderAction(_ sender: Any) {
        changeColorAction()
    }
    @IBAction func blueSliderAction(_ sender: Any) {
        changeColorAction()
    }
    
    func changeColorAction(){
        selectColor = UIColor(red:CGFloat(redSlider.value),
                green:CGFloat(greenSlider.value),
                blue:CGFloat(blueSlider.value),alpha:1.0)
        selectColorLabel.backgroundColor = selectColor
    }
    @IBAction func redButtonAction(_ sender: Any) {
        selectColor = UIColor.red
    }
    
    @IBAction func okButtonAction(_ sender: Any) {
        self.performSegue(withIdentifier: "toViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! ViewController
        viewController.labelColor = selectColor
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
