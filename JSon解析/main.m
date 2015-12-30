//
//  main.m
//  JSon解析
//
//  Created by qianfeng on 15/10/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *string = [NSString stringWithContentsOfFile:@"/Users/qianfeng1/Downloads/OC/resource/jsonFile/薄荷Json" encoding:NSUTF8StringEncoding error:nil];
        NSData *data = [NSData dataWithContentsOfFile:@"/Users/qianfeng1/Downloads/OC/resource/jsonFile/薄荷Json"];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:nil error:nil];
        NSDictionary *object1= [dic objectForKey:@"root"];
        
        NSDictionary *object2 = [object1 objectForKey:@"hotChooses"];
        
        NSDictionary *object3 = [object2 objectForKey:@"hot"];
        NSArray *object4 = [object3 objectForKey:@"dict"];
        NSDictionary *object5 = [object4 objectAtIndex:0];
        NSLog(@"%@",object5);
        NSLog(@"%@",object5[@"detail"]);
        
       // NSLog(@"%@",dic);
        
    }
    return 0;
}
