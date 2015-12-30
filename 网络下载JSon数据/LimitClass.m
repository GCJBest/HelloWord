//
//  LimitClass.m
//  JSon解析
//
//  Created by qianfeng on 15/10/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "LimitClass.h"

@implementation LimitClass

- (void)dealloc{
    [_applicationId release];
    [_slug release];
    [_name release];
    [_releaseDate release];
    [_version release];
    [_description1 release];
    [_categoryId release];
    [_categoryName release];
    [_iconUrl release];
    [_itunesUrl release];
    [_starCurrent release];
    [_starCurrent release];
    [_ratingOverall release];
    [_downloads release];
    [_currentPrice release];
    [_lastPrice release];
    [_priceTrend release];
    [_expireDatetime release];
    [_releaseNotes release];
    [_updateDate release];
    [_fileSize release];
    [_ipa release];
    [_shares release];
    [_favorites release];
    [super dealloc];
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    if ([@"description" isEqualToString:key]) {
        self.description1 = value;
    }
}

- (LimitClass *)initWithDictionary:(NSDictionary *)dictionary{
    if (self = [super init]) {
       
        [self setValuesForKeysWithDictionary:dictionary];
    }
    return self;
}

- (NSString *)description{
    return [NSString stringWithFormat:@"applicationId:%@ slug:%@ name:%@",_applicationId,_slug,_name];
}
@end
