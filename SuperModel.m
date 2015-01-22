//
//  SuperModel.m
//  PerformanceIssue
//
//  Created by Marek Moscichowski on 22.01.2015.
//  Copyright (c) 2015 Miquido. All rights reserved.
//

#import "SuperModel.h"

@implementation SuperModel

- (instancetype)init{
    self = [super init];
    if(self){
        NSMutableArray *mutableArray = [NSMutableArray new];
        for(int i = 0 ; i < 100; i++){
            [mutableArray addObject:[NSString stringWithFormat:@"i \n=\n %d",i]];
        }

        self.array = mutableArray;
    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Marek"];
    cell.textLabel.text = self.array[indexPath.row];
    return cell;
}

@end
