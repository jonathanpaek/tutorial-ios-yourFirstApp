//
//  ViewController.swift
//  sample-swift-SDKStarterWithOauth2
//

import UIKit
import ArtikCloudSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnGetMessage: UIButton!
    @IBOutlet weak var btnSendMessage: UIButton!
    @IBOutlet weak var textOutput: UITextView!
    
    
    @IBAction func btnLoginAction(sender: AnyObject) {
        
        HelperAuthClient.artikCloudLogin()
        
    }
    
    @IBAction func sendMessageAction(sender: AnyObject) {
        
        textOutput.text = "Sending Message ..."
        
        let message = Message()
       
        //set the source with device id
        message.sdid = Config.DeviceId
        
        //set random temperature for sending
        message.data =  [
            "temp": random() % 200
        ]
        
        
        //ARTIK Cloud MessagesAPI for sending / receiving message
        
        MessagesAPI.sendMessage(data: message).then { response -> Void in
            
            let responseText:String = "Response:" + String("mid:", response.data?.mid)
            
            self.textOutput.text = responseText;
            
            }.error { error -> Void in
                
                self.textOutput.text = "Error Send Message: " + String(error)
                
        }
    }
    
    @IBAction func getMessageAction(sender: AnyObject) {
        
        textOutput.text = "Getting Message ..."
        
        let sdid = Config.DeviceId

        //ARTIK Cloud MessagesAPI for sending / receiving message
        
        MessagesAPI.getLastNormalizedMessages(sdids: sdid).then { response -> Void in
            
            let normalizedMessage = response.data! as [NormalizedMessage]
            
            // move along if no messages
            if normalizedMessage.isEmpty == true {
                
                self.textOutput.text = "No messages"
                return
                
            }
            
            let responseObject:[String:AnyObject] = [
                "mid": String(normalizedMessage[0].mid),
                "ts": String(normalizedMessage[0].ts),
                "sdtid": String(normalizedMessage[0].sdtid),
                "data": String(normalizedMessage[0].data)
            ]
            
            self.textOutput.text = responseObject.description
            
            }.error { error -> Void in
                
                print(String(format: "%s", String(error)))
                self.textOutput.text = "Get Message Error: " + String(error)
                
        }
        
    }
    
}

