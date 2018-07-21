//
//  ViewController.swift
//  DemoApp
//
//  Created by Arjun on 7/20/18.
//  Copyright © 2018 Window. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var txtMessage: UITextField!
    
    @IBOutlet weak var viewPicker: UIView!
    @IBOutlet weak var tblView: UITableView!
    var arrMessage = [Message]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.txtMessage.addPadding(.left(10))
        self.viewPicker.isHidden = true
        self.tblView.layer.backgroundColor = UIColor.clear.cgColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrMessage.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let obj = arrMessage[indexPath.row]
         if obj.messageType == "Incomming"{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ICell", for: indexPath) as! TimeLineUITableViewCell
           
            cell.lblMessage.text = obj.messageText
            cell.lblMessage.text = obj.messageText
            let dateformat = DateFormatter()
            dateformat.dateFormat = "yyyy-MM-dd hh:mm:ss"
            cell.lblTime.text = dateformat.string(from: obj.messageDateTime)
            let heigth = cell.lblMessage.heightForLabel(text: obj.messageText, font: cell.lblMessage.font, width: cell.lblMessage.frame.width)
            
          cell.lblMessage.frame =   CGRect(x: cell.lblMessage.frame.origin.x, y: cell.lblMessage.frame.origin.y, width: cell.lblMessage.frame.size.width, height:heigth)
            if heigth > cell.view.frame.size.height{
                cell.view.frame =   CGRect(x: cell.view.frame.origin.x, y: cell.view.frame.origin.y, width: cell.view.frame.size.width, height:cell.view.frame.origin.y + heigth + 2)
                cell.lblTime.frame = CGRect(x: cell.lblTime.frame.origin.x, y: cell.view.frame.origin.y + cell.view.frame.height, width: cell.lblTime.frame.size.width, height:cell.lblTime.frame.size.height)
            }else{
                
                cell.view.frame =   CGRect(x: cell.view.frame.origin.x, y: cell.view.frame.origin.y, width: cell.view.frame.size.width, height:cell.view.frame.size.height)
                cell.lblTime.frame = CGRect(x: cell.lblTime.frame.origin.x, y: cell.view.frame.origin.y + cell.view.frame.height, width: cell.lblTime.frame.size.width, height:cell.lblTime.frame.size.height)
                
            }
            
              return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "OCell", for: indexPath) as! TimeLineUITableViewCell
            
            cell.lblMessage.text = obj.messageText
            cell.lblMessage.text = obj.messageText
            let dateformat = DateFormatter()
            dateformat.dateFormat = "yyyy-MM-dd hh:mm:ss"
            cell.lblTime.text = dateformat.string(from: obj.messageDateTime)
            let heigth = cell.lblMessage.heightForLabel(text: obj.messageText, font: cell.lblMessage.font, width: cell.lblMessage.frame.width)
            cell.lblMessage.frame =   CGRect(x: cell.lblMessage.frame.origin.x, y: cell.lblMessage.frame.origin.y, width: cell.lblMessage.frame.size.width, height: heigth)
            if heigth > cell.view.frame.size.height{
                cell.view.frame =   CGRect(x: cell.view.frame.origin.x, y: cell.view.frame.origin.y, width: cell.view.frame.size.width, height:cell.view.frame.origin.y + heigth + 2)
                cell.lblTime.frame = CGRect(x: cell.lblTime.frame.origin.x, y: cell.view.frame.origin.y + cell.view.frame.height, width: cell.lblTime.frame.size.width, height:cell.lblTime.frame.size.height)
            }else{
                
                cell.view.frame =   CGRect(x: cell.view.frame.origin.x, y: cell.view.frame.origin.y, width: cell.view.frame.size.width, height:cell.view.frame.size.height)
                cell.lblTime.frame = CGRect(x: cell.lblTime.frame.origin.x, y: cell.view.frame.origin.y + cell.view.frame.height, width: cell.lblTime.frame.size.width, height:cell.lblTime.frame.size.height)
                
            }
          
              return cell
        }
      
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let obj = arrMessage[indexPath.row]
        if obj.messageType == "Incomming"{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ICell") as! TimeLineUITableViewCell
           
            
            
            let heigth = cell.lblMessage.heightForLabel(text: obj.messageText, font: cell.lblMessage.font, width: cell.lblMessage.frame.width)
            cell.lblMessage.frame =   CGRect(x: cell.lblMessage.frame.origin.x, y: cell.lblMessage.frame.origin.y, width: cell.lblMessage.frame.size.width, height:heigth)
            if heigth > cell.view.frame.size.height{
                cell.view.frame =   CGRect(x: cell.view.frame.origin.x, y: cell.view.frame.origin.y, width: cell.view.frame.size.width, height:cell.view.frame.origin.y + heigth + 2)
                cell.lblTime.frame = CGRect(x: cell.lblTime.frame.origin.x, y: cell.view.frame.origin.y + cell.view.frame.height, width: cell.lblTime.frame.size.width, height:cell.lblTime.frame.size.height)
            }else{
                
                cell.view.frame =   CGRect(x: cell.view.frame.origin.x, y: cell.view.frame.origin.y, width: cell.view.frame.size.width, height:cell.view.frame.size.height)
                cell.lblTime.frame = CGRect(x: cell.lblTime.frame.origin.x, y: cell.view.frame.origin.y + cell.view.frame.height, width: cell.lblTime.frame.size.width, height:cell.lblTime.frame.size.height)
                
            }
            return cell.lblTime.frame.origin.y + cell.lblTime.frame.height + 5
        }else{
             let cell = tableView.dequeueReusableCell(withIdentifier: "OCell") as! TimeLineUITableViewCell
            
           
            let heigth = cell.lblMessage.heightForLabel(text: obj.messageText, font: cell.lblMessage.font, width: cell.lblMessage.frame.width)
            cell.lblMessage.frame =   CGRect(x: cell.lblMessage.frame.origin.x, y: cell.lblMessage.frame.origin.y, width: cell.lblMessage.frame.size.width, height:heigth)
            if heigth > cell.view.frame.size.height{
                 cell.view.frame =   CGRect(x: cell.view.frame.origin.x, y: cell.view.frame.origin.y, width: cell.view.frame.size.width, height:cell.view.frame.origin.y + heigth + 2)
                 cell.lblTime.frame = CGRect(x: cell.lblTime.frame.origin.x, y: cell.view.frame.origin.y + cell.view.frame.height, width: cell.lblTime.frame.size.width, height:cell.lblTime.frame.size.height)
            }else{
                
                    cell.view.frame =   CGRect(x: cell.view.frame.origin.x, y: cell.view.frame.origin.y, width: cell.view.frame.size.width, height:cell.view.frame.size.height)
                    cell.lblTime.frame = CGRect(x: cell.lblTime.frame.origin.x, y: cell.view.frame.origin.y + cell.view.frame.height, width: cell.lblTime.frame.size.width, height:cell.lblTime.frame.size.height)
                
            }
            return cell.lblTime.frame.origin.y + cell.lblTime.frame.height + 5
        }
  }
    
    @IBAction func btnSend(_ sender: Any) {
        let obj = Message()
        obj.messageText = txtMessage.text!
        if arrMessage.count % 2 == 0{
           obj.messageType = "Incomming"
        }else{
            obj.messageType = "outgoing"
        }
        
        obj.messageDateTime = Date()
        self.arrMessage.append(obj)
        txtMessage.text = ""
        tblView.scrollToBottom()
        self.tblView.reloadData()
        
    }
    @IBAction func btnAddView(_ sender: Any) {
        if viewPicker.isHidden{
            self.viewPicker.isHidden = false
        }else{
            self.viewPicker.isHidden = true
        }
    }
    
    
}

