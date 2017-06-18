//
//  ViewController.swift
//  Emoji App
//
//  Created by Mogens Hansen on 18/06/2017.
//  Copyright © 2017 bigMdk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet var emojiTableview: UITableView!
    
    var emojis = ["😀","😃","😄","😁","😆","😅","😂","🤣","☺️","😊","😇","🙂","🙃","😉","😌","😍","😘","😗","😙","😚","😋","😜","😝","😛","🤑","🤗","🤓","😎","🤡","🤠","😏","😒","😞","😔","😟","😕","🙁","☹️","😣","😖","😫","😩","😤","😠","😡","😶","😐","😑","😯","😦","😧","😮","😲","😵","😳","😱","😨","😰","😢","😥","🤤","😭","😓","😪","😴","🙄","🤔","🤥","😬","🤐","🤢","🤧","😷","🤒","🤕","😈","👿","👹","👺","💩","👻","💀","☠️","👽","👾","🤖","🎃","😺","😸","😹","😻","😼","😽","🙀","😿","😾"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiTableview.dataSource = self
        emojiTableview.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
