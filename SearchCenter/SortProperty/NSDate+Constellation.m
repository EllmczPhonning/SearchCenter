//
//  NSDate+Constellation.m
//  搜索
//
//  Created by MacBook on 16/7/12.
//  Copyright © 2016年 ellmcz. All rights reserved.
//

#import "NSDate+Constellation.h"

@implementation NSDate (Constellation)

- (NSString *)constellation{
    NSString *retureStr=@"";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"MM"];
    int month = 0;
    NSString *theMonth = [dateFormat stringFromDate:self];
    if([[theMonth substringToIndex:0] isEqualToString:@"0"]) {
        month = [[theMonth substringFromIndex:1] intValue];
    } else {
        month = [theMonth intValue];
    }
    
    [dateFormat setDateFormat:@"dd"];
    int day = 0;
    NSString *theDay = [dateFormat stringFromDate:self];
    if([[theDay substringToIndex:0] isEqualToString:@"0"]) {
        day = [[theDay substringFromIndex:1] intValue];
    } else {
        day = [theDay intValue];
    }
    switch (month) {
        case 1:
            if(day>=20 && day<=31){
                retureStr=@"水瓶座";
            }
            if(day>=1 && day<=19){
                retureStr=@"摩羯座";
            }
            break;
        case 2:
            if(day>=1 && day<=18){
                retureStr=@"水瓶座";
            }
            if(day>=19 && day<=31){
                retureStr=@"双鱼座";
            }
            break;
        case 3:
            if(day>=1 && day<=20){
                retureStr=@"双鱼座";
            }
            if(day>=21 && day<=31){
                retureStr=@"白羊座";
            }
            break;
        case 4:
            if(day>=1 && day<=19){
                retureStr=@"白羊座";
            }
            if(day>=20 && day<=31){
                retureStr=@"金牛座";
            }
            break;
        case 5:
            if(day>=1 && day<=20){
                retureStr=@"金牛座";
            }
            if(day>=21 && day<=31){
                retureStr=@"双子座";
            }
            break;
        case 6:
            if(day>=1 && day<=21){
                retureStr=@"双子座";
            }
            if(day>=22 && day<=31){
                retureStr=@"巨蟹座";
            }
            break;
        case 7:
            if(day>=1 && day<=22){
                retureStr=@"巨蟹座";
            }
            if(day>=23 && day<=31){
                retureStr=@"狮子座";
            }
            break;
        case 8:
            if(day>=1 && day<=22){
                retureStr=@"狮子座";
            }
            if(day>=23 && day<=31){
                retureStr=@"处女座";
            }
            break;
        case 9:
            if(day>=1 && day<=22){
                retureStr=@"处女座";
            }
            if(day>=23 && day<=31){
                retureStr=@"天秤座";
            }
            break;
        case 10:
            if(day>=1 && day<=23){
                retureStr=@"天秤座";
            }
            if(day>=24 && day<=31){
                retureStr=@"天蝎座";
            }
            break;
        case 11:
            if(day>=1 && day<=21){
                retureStr=@"天蝎座";
            }
            if(day>=22 && day<=31){
                retureStr=@"射手座";
            }
            break;
        case 12:
            if(day>=1 && day<=21){
                retureStr=@"射手座";
            }
            if(day>=21 && day<=31){
                retureStr=@"摩羯座";
            }
            break;
    }
    return retureStr;
}

@end
