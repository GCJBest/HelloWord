//
//  LimitClass.h
//  JSon解析
//
//  Created by qianfeng on 15/10/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
//applicationId
//slug
//name
//releaseDate
//version
//description
//categoryId
//categoryName
//iconUrl
//itunesUrl
//starCurrent
//starCurrent
//ratingOverall
//downloads
//currentPrice :
//lastPrice
//priceTrend
//expireDatetime
//releaseNotes
//updateDate
//fileSize
//ipa
//shares
//favorites
@interface LimitClass : NSObject

@property (copy)NSString *applicationId;
@property (copy)NSString *slug;
@property (copy)NSString *name;
@property (copy)NSString *releaseDate;
@property (copy)NSString *version;

@property (copy)NSString *description1;
@property (copy)NSString *categoryId;
@property (copy)NSString *categoryName;
@property (copy)NSString *iconUrl;
@property (copy)NSString *itunesUrl;
@property (copy)NSString *starCurrent;
@property (copy)NSString *starCurrent2;
@property (copy)NSString *ratingOverall;
@property (copy)NSString *downloads;
@property (copy)NSString *currentPrice;
@property (copy)NSString *lastPrice;
@property (copy)NSString *priceTrend;
@property (copy)NSString *expireDatetime;
@property (copy)NSString *releaseNotes;
@property (copy)NSString *updateDate ;
@property (copy)NSString *fileSize;
@property (copy)NSString *ipa;
@property (copy)NSString *shares;
@property (copy)NSString *favorites;



- (LimitClass *)initWithDictionary:(NSDictionary *)dictionary;

@end
