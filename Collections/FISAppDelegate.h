//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 
 * Declare your methods here.
 
 */
- (NSArray *)arrayBySortingArrayAscending:(NSArray * )ascendingPrimes ;

- (NSArray *)arrayBySortingArrayDescending:(NSArray *)descendingPrimes ;

- (NSArray * )arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray *)array ;

- (NSArray *)arrayByReversingArray:(NSArray *)fiveStrings ;

- (NSString *)stringInBasicLeetFromString:(NSString *)basicLeet ;

- (NSArray *)splitArrayIntoNegativesAndPositives:(NSArray *)array ;

- (NSArray *)namesOfHobbitsInDictionary:(NSDictionary *)hobbits ;

- (NSArray *)stringsBeginningWithAInArray:(NSArray *)array ;

- (NSInteger)sumOfIntegersInArray:(NSArray *)array ;

- (NSArray *)arrayByPluralizingStringsInArray:(NSArray *)array ;

- (NSDictionary *)countsOfWordsInString:(NSString *)string ;

- (NSDictionary *)songsGroupedByArtistFromArray:(NSArray *)array ;
@end
