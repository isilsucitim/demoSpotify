

import UIKit

class TitleHeaderCell: BaseCell<Title> {

    
    @IBOutlet var lblTitle: UILabel!
    
    
    override func SetupUI() {
        lblTitle.text = data!.Title
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
