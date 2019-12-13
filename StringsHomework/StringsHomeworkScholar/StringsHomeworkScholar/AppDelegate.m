//
//  AppDelegate.m
//  StringsHomeworkScholar
//
//  Created by Vladislav Boyko on 12/13/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSString *story = @"Once upon a time, in a faraway village by a great river, there lived two brothers named Antek and Jonek.Jonek was a kind hearted and patient man, always eager to help others, and it was with gratitude that he took over the running of his parents’ farm once they had become too old to care for the animals. Jonek was a successful farmer and soon married a beautiful woman who was as gentle and hardworking as he.Antek helped his brother at the beginning, but he soon tired of farming and moved on from one job to another, first becoming a carpenter’s apprentice, then a baker’s assistant, and then a blacksmith’s assistant. Being a lazy man, Antek was unable to stay in any one job and would always move on when the work became too hard or tiresome. Finally he settled down and married the daughter of a very rich widow and lived a comfortable and luxurious life which required very little work.Jonek, despite being a diligent and compassionate man, had no such luck. He toiled in the fields but his crops did not yield very much come harvest time. The wheat that did grow was soon beaten down by angry storms and merciless winds, and his cattle were plagued by disease and hunger.His wife fell ill, and just as she began to recover, four of his children were struck down by yellow fever.When he finally ran out of money, Jonek was forced to pay a visit to his heartless brother.‘Antek, lend me some money,’ pleaded Jonek. ‘My beloved children are ill, my horse is dying, and my ox is lame. I cannot work, and we are so hungry.’‘Alright, but you must pay me back what you owe and more,’ replied Antek with a smug grin on his face.Jonek was saddened by his brother’s lack of goodwill, but he had no choice but to borrow the money despite such unreasonable demands.Jonek borrowed and borrowed from his brother, and Antek let this happen, believing that one day he would be able to take over the family farm and reap the rewards.It was not too long before the mean brother got his wish. Jonek fell behind in his payments and was unable to continue the upkeep of the farm. Eventually he was forced to search for a new home.Antek was a very mean fellow and began to move all of his possessions into the farm before Jonek and his family had even had a chance to move out.Despite his terrible run of bad luck, Jonek remained positive. He told his wife: ‘There is a small house at the very edge of the village where a shepherd once lived. We can just about manage to live in such a place.’Although he was determined to remain optimistic, Jonek wept as he bid farewell to his childhood home. He left the farm with his wife and seven children. They carried their humble possessions on their backs and made their way towards their new home. Antek was so mean that he even refused to lend them his cart for the journey.Jonek sold his remaining cattle for less than half what they were worth and tried his best to settle into the little house on the edge of the village.His wife and children tended a small vegetable patch in the modest garden, while Jonek took on various odd jobs around the village. The family spent many years living an impoverished life, all the time wary of the wolves who roamed in the forest, all the time hungry for food or in need of extra money to buy clothes or medicines.During those hard years, Antek, the mean hearted brother, became the wealthiest man in the county, but never once did he offer to help his poor brother.One day, as Antek was hosting a lavish wedding for his eldest daughter, Jonek decided to visit the church to pray for help. In the church he saw his brother and his family – all sitting in the front row, all dressed in extravagant silks and furs and smooth leather boots, while poor Jonek remained at the back of the church: a cold and hungry figure hiding in the shadows.";
    
//    NSLog(@"%@", [story substringToIndex:(story.length / 2)]);
//    NSLog(@"\n\n\n%@", [story substringWithRange:NSMakeRange((story.length / 2), story.length / 2)]);
    
    NSArray *array = [NSArray arrayWithArray: [story componentsSeparatedByString:@"."]];
    NSMutableArray *filteredArray = [NSMutableArray new];
    
    for (NSString *sentence in array) {
        if (![sentence containsString:@"Antek"]) {
            [filteredArray addObject:sentence];
        }
    }
    
    /*
    for (NSString *sentence in filteredArray) {
        NSLog(@"%@", sentence);
    } */
    
    NSMutableArray *reversedArray = [NSMutableArray new];
    
    for (NSString *sentence in filteredArray) {
        NSString* reversed = [[[sentence componentsSeparatedByString:@" "] reverseObjectEnumerator].allObjects componentsJoinedByString:@" "];
        [reversedArray addObject:reversed];
    }
    
    for (NSString *sentence in reversedArray) {
        NSLog(@"%@", sentence);
    }
    
    
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
