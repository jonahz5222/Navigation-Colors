//
//  ColorViewController.swift
//  Colors
//
//  Created by Jonah Zukosky on 7/4/18.
//  Copyright © 2018 Zukosky, Jonah. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var colorTableView: UITableView!
    
    let uiColors = [UIColor.red,UIColor.orange,UIColor.yellow,UIColor.green,UIColor.blue,UIColor.purple,UIColor.brown]
    let colors = ["red","orange","yellow","green","blue","purple","brown"]

    override func viewDidLoad() {
        super.viewDidLoad()
        colorTableView.dataSource = self
        colorTableView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row]
        cell.backgroundColor = uiColors[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ColorDetailViewController
        guard let selectedRow = colorTableView.indexPathForSelectedRow?.row else {return}
        
        destination.colorText = colors[selectedRow]
        destination.view.backgroundColor = uiColors[selectedRow]
    }
    


}
