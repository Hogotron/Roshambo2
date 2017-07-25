//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Tomas Sidenfaden on 7/24/17.
//  Copyright © 2017 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation
import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource {
 
    var history = [RPSMatch]()
    
    // Data source methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell")!
        let results = self.history[(indexPath as NSIndexPath).row]
        
        let resultsView = ResultViewController()
        
        cell.textLabel?.text = resultsView.resultString(results)
        cell.detailTextLabel?.text = "\(results.winner.description) vs. \(results.loser.description)"
        cell.imageView?.image = resultsView.imageForMatch(results)
        
    return cell
    }
}
