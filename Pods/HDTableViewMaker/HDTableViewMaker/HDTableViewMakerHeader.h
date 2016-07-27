//
//  HDTableViewDataSource.h
//  CBTableViewDataSourceDemo
//
//  Created by 洪东 on 7/15/16.
//  Copyright © 2016 Cocbin. All rights reserved.
//

#ifndef HDTableViewMakerHeader_h
#define HDTableViewMakerHeader_h

#define HDDataArr(__dataArr__) ^(){return __dataArr__;}
#define HDCellClass(_cellClass_) [_cellClass_ class]
#define HDAdapter(_adapter_) \
^(HDTableViewCell *cell,id data,NSIndexPath *indexPath){ \
_adapter_ \
}

#import "UITableView+HDTableViewMaker.h"
#import "HDTableViewMaker.h"
#import "HDSectionMaker.h"
#import "HDCellMaker.h"
#import "HDBaseTableViewDataSource.h"
#import "UITableView+HDFreshUI.h"

#endif /* HDTableViewDataSource_h */
