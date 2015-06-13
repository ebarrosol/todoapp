
import UIKit

var taskmgr : TaskManager = TaskManager()

struct task
{
    var name = "un-named"
    var descrip = "un-described"
}

class TaskManager: NSObject
{
    var tasks = [task]()
    
    func addTask(_name : String, _descrip : String)
    {
        tasks.append(task(name: _name, descrip: _descrip))
    }
    
}
