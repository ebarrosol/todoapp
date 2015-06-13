

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    @IBOutlet var tablatareas : UITableView!
    
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
    
    override func viewWillAppear(_animated: Bool)
    {
        tablatareas.reloadData()
    }
    
    //INI UITableViewDataSource
    
    func tableView(_tableView: UITableView, commitEditingStyle _editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath _indexPath: NSIndexPath)
    {
        if(_editingStyle == UITableViewCellEditingStyle.Delete)
        {
            taskmgr.tasks.removeAtIndex(_indexPath.row)
            tablatareas.reloadData()
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
            return taskmgr.tasks.count
    }
    
    func tableView(_tableView: UITableView, cellForRowAtIndexPath _indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default")
        
        cell.textLabel!.text = taskmgr.tasks[_indexPath.row].name
        cell.detailTextLabel!.text = taskmgr.tasks[_indexPath.row].descrip
        
        return cell
    }
    //FIN UITableViewDataSource
    
}

