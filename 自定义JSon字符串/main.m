//
//  main.m
//  自定义JSon字符串
//
//  Created by qianfeng on 15/10/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#define SHOW(obj);NSLog(@"%@",obj)
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSData *data = [NSData dataWithContentsOfFile:@"/Users/qianfeng1/Desktop/2015/10:28/JSon解析/自定义JSon字符串/JSonFile"];
        
//        NSString *str = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
//        NSLog(@"%@",str);
        //将二进制数据转换成数组或字典。
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        //        NSLog(@"%@",dic);
        
        NSDictionary *dic1 = dic[@"world"];
        //        SHOW(dic1);
        
        NSDictionary *dic2 = dic1[@"China"];
        //        SHOW(dic2);
        
        NSArray *arry = dic2[@"HeNan"];
        SHOW(arry);
        for (NSString *obj in arry) {
            SHOW(obj);
        }
        
    }
    return 0;
}
