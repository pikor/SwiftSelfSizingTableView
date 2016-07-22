//
//  ViewController.swift
//  SelfSizingTable
//
//  Created by Lukasz Pikor on 10.03.2016.
//  Copyright © 2016 Lukasz Pikor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let data = ["First", "Second", "Third", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. THE END", "Bla, bla, bla bla \n \n \n \n END :) "]
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /// If constraints in TableViewCell are configured correclty that's all you need to set.
        /// When configuring constraints think of width as input, height: output you want to determine.
        tableview.rowHeight = UITableViewAutomaticDimension
        tableview.estimatedRowHeight = 200
    }
}

private typealias TableViewDataSource = ViewController
extension TableViewDataSource: UITableViewDataSource {
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Self Sizing Cell", forIndexPath: indexPath) as! SelfSizingTableViewCell
        let hue = CGFloat(drand48())
        let saturation = CGFloat(drand48())
        let brightness = CGFloat(drand48())
        let randomColor = UIColor.init(hue: hue, saturation: saturation, brightness: brightness, alpha: 1.0)
        
        cell.contentView.backgroundColor = randomColor
        cell.viewData = SelfSizingTableViewCell.ViewData(title: data[indexPath.row])
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
}
