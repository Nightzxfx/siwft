import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func sub(_ sender: NSButton) {
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
        let writeString = " Write this documment to the file after pressing the button"
        
        //#Error Handler
        do {
            //Write to the file
            try writeString.write(to: fileURL,atomically: true, encoding: String.Encoding.utf8)
        } catch let error as NSError {
            print("Filed writing to URL: \(fileURL), ERROR: " + error.localizedDescription)
        }
    }
}
