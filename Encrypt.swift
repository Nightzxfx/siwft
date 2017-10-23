//
//  ViewController.swift
//  encryptt
//
//  Created by h01 on 2017-10-23.
//  Copyright © 2017 h01. All rights reserved.
//

import Cocoa
import CryptoSwift

class ViewController: NSViewController {

    @IBOutlet weak var translate: NSTextField!
    @IBOutlet weak var md5: NSTextField!
    @IBOutlet weak var sha1: NSTextField!
    @IBOutlet weak var sha2: NSTextField!
    @IBOutlet weak var aes: NSTextField!
    @IBOutlet weak var blow: NSTextField!
    @IBOutlet weak var rabit: NSTextField!
    @IBOutlet weak var crc: NSTextField!
    @IBOutlet weak var descr: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func MD5(message : String) -> String {
        
        return message.md5()
    }
    
    func SHA1(message: String) -> String {
    
        return message.sha1()
    }
    
    func SHA2(message: String) -> String {
        
        return message.sha224()
    }
    
    @IBAction func encrypt(_ sender: NSButton) {
        
        md5.stringValue =  MD5(message: translate.stringValue)
        sha1.stringValue = SHA1(message: translate.stringValue)
        sha2.stringValue = SHA2(message: translate.stringValue)
    }

    @IBAction func save(_ sender: NSButton) {
        //let desktopURL = NSURL(fileURLWithPAth: "/User/Paulo/Desltop")
        //Step#1 Create file Name
        let fileName = "data"
        
        //Step#2 Assign the path
        let DocumentDirURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        
        //Step#3 Add file extension
        let fileURL = DocumentDirURL.appendingPathComponent(fileName).appendingPathExtension("txt")
        
        //Display PAth
        print("FilePath: \(fileURL.path)")
        
        //Step#4 Your Content // Static or Dynamic
        let writeString = String(describing: translate.stringValue + "\n" + "MD5: " + md5.stringValue + "\n" + "SHA1: " + sha1.stringValue + "\n" + "SHA2: " + sha2.stringValue + "\n" + "AES: " + aes.stringValue + "\n" + "blow: " + blow.stringValue + "\n" + "rabit: " + rabit.stringValue + "\n" + "crc: " + crc.stringValue + "\n" + "Descrypt: " + descr.stringValue)
        
        //#Error Handler
        do {
            //Write to the file
            try writeString.write(to: fileURL,atomically: true, encoding: String.Encoding.utf8)
        } catch let error as NSError {
            print("Filed writing to URL: \(fileURL), ERROR: " + error.localizedDescription)
        }
    }
}
    


        


        

    
    
    /*
    func Man_AES_Encryption() {
        
        do {
            let aes = try AES(key: "passwordpassword", iv: "drowssapdrowssap")
            let ciphertext = try aes.encrypt(Array("Secret Message".utf8))
            
            print(ciphertext)
            
            let count = ciphertext.count / MemoryLayout<UInt8>.size
            let dataString = NSString(bytes: ciphertext, length: count, encoding: String.Encoding.ascii.rawValue)
        } catch{
        }
*/

