//
//  ColorDetailViewController.swift
//  Colors
//
//  Created by Jonah Zukosky on 7/11/18.
//  Copyright © 2018 Zukosky, Jonah. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!
    var colorText = "No Color?"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorLabel.text = colorText
        navigationItem.title = colorText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
