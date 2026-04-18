#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

%hook NSUserDefaults

- (BOOL)boolForKey:(NSString *)defaultName {
    // TrollFools 中广告隐藏开关对应的 UserDefaults key
    if ([defaultName isEqualToString:@"isAdvertisementHiddenV2"]) {
        return YES;   // 强制隐藏广告
    }
    return %orig;
}

%end

%ctor {
    NSLog(@"[TrollFoolsAdRemover] Loaded – advertisements disabled.");
}
