//
//  main.m
//  网络下载JSon数据
//
//  Created by qianfeng on 15/10/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LimitClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //网络下载数据
        //网络下载数据
        NSURL *url = [NSURL URLWithString:@"http://iappfree.candou.com:8080/free/applications/limited?currency=rmb&page=1&limit=2"];
        
        
        
        
        NSData *data = [NSData dataWithContentsOfURL:url];
        
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSArray *array = dic[@"applications"];
        
        NSDictionary *dic2 = array[0];
        LimitClass *limit = [[LimitClass alloc]initWithDictionary:dic2];
        
//        limit.applicationId = dic2[@"applicationId"];
//        limit.slug = dic2[@"slug"];
        
        NSLog(@"%@",limit);
        [limit release];
        
    }
    return 0;
}
