
import UIKit

class BaseCell<T>: UICollectionViewCell {
    
    var data:T?{
        didSet{
          SetupUI()
        }
    }
    func SetupUI()  {
        
    }
}
