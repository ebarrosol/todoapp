
import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate
{

    @IBOutlet var txtntareanombre: UITextField!
    @IBOutlet var txtntareadescrip: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Eventos
    @IBAction func agregarTarea(sender: UIButton)
    {
        taskmgr.addTask(txtntareanombre.text, _descrip: txtntareadescrip.text)
        self.view.endEditing(true)
        txtntareanombre.text = ""
        txtntareadescrip.text = ""
        self.tabBarController?.selectedIndex = 0
        
    }
    
    //Funciones touch
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent)
    {
        self.view.endEditing(true)
    }

    //UITextFieldDelegate
    func textFieldShouldReturn(_textField: UITextField) -> Bool
    {
        _textField.resignFirstResponder()
        return true
    }

}

