//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    return YES;
}

/**
 
 * Define your methods here.
 
 */

- (NSArray *)arrayBySortingArrayAscending:(NSArray *)ascendingPrimes {
    NSSortDescriptor *sortingArrayAscending = [ NSSortDescriptor sortDescriptorWithKey:nil ascending:YES ];
    NSArray *arrayBySortingArrayAscending = [ ascendingPrimes sortedArrayUsingDescriptors:@[sortingArrayAscending] ];
    NSLog(@"%@", arrayBySortingArrayAscending) ;
    return arrayBySortingArrayAscending;
}

- (NSArray *)arrayBySortingArrayDescending:(NSArray *)descendingPrimes {
    NSSortDescriptor *sortingArrayDescending = [ NSSortDescriptor sortDescriptorWithKey:nil ascending:NO ];
    NSArray *arrayBySortingArrayDescending = [ descendingPrimes sortedArrayUsingDescriptors:@[ sortingArrayDescending ]] ;
    return arrayBySortingArrayDescending;
}

- (NSArray *)arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray *)array {
    NSMutableArray *arrayBySwappingFirstObjectWithLastObjectInArray = [ NSMutableArray new ];
    [ arrayBySwappingFirstObjectWithLastObjectInArray addObject:array[[array count] - 1] ] ;
    for ( NSUInteger i = 1 ; i < [ array count ]- 1  ; i++) {
        [ arrayBySwappingFirstObjectWithLastObjectInArray addObject:array[i] ];
    }
    [ arrayBySwappingFirstObjectWithLastObjectInArray addObject:array[0] ];
    NSLog(@"%@", arrayBySwappingFirstObjectWithLastObjectInArray) ;
    return arrayBySwappingFirstObjectWithLastObjectInArray;
} //Is there a better way to do this one?

- (NSArray *)arrayByReversingArray:(NSArray *)array {
    NSMutableArray *arrayByReversingArray = [ NSMutableArray new ] ;
    for ( NSInteger i = [ array count] - 1; i > -1 ; i-- ) {
        [ arrayByReversingArray addObject:array[i] ];
    }
    NSLog(@"%@", arrayByReversingArray);
    
    return arrayByReversingArray ;
}

- (NSString *)stringInBasicLeetFromString:(NSString *)string {
    NSDictionary *basicLeet = @{
                                @"a" : @"4" ,
                                @"s" : @"5" ,
                                @"i" : @"1" ,
                                @"l" : @"1" ,
                                @"e" : @"3" ,
                                @"t" : @"7"
                                };
    NSMutableString *stringInBasicLeetFromString = [ string copy ] ;
    for (NSString *key in basicLeet) {
        stringInBasicLeetFromString = [ stringInBasicLeetFromString stringByReplacingOccurrencesOfString:key withString:[ basicLeet valueForKey:key]] ;
    }
//    NSMutableString *stringInBasicLeetFromString = [ string stringByReplacingOccurrencesOfString:@"a" withString:@"4"];
//    stringInBasicLeetFromString = [ stringInBasicLeetFromString stringByReplacingOccurrencesOfString:@"s" withString:@"5"];
//    stringInBasicLeetFromString = [ stringInBasicLeetFromString stringByReplacingOccurrencesOfString:@"i" withString:@"1"];
//    stringInBasicLeetFromString = [ stringInBasicLeetFromString stringByReplacingOccurrencesOfString:@"l" withString:@"1"];
//    stringInBasicLeetFromString = [ stringInBasicLeetFromString stringByReplacingOccurrencesOfString:@"e" withString:@"3"];
//    stringInBasicLeetFromString = [ stringInBasicLeetFromString stringByReplacingOccurrencesOfString:@"t" withString:@"7"];
    return stringInBasicLeetFromString;
}

- (NSArray *)splitArrayIntoNegativesAndPositives:(NSArray *)array {
    NSMutableArray *splitArrayIntoNegativesAndPositives = [NSMutableArray new] ;

    NSPredicate *sortLessThan = [ NSPredicate predicateWithFormat: @" self < 0"];
    NSArray *lessThanArray = [ array filteredArrayUsingPredicate:sortLessThan ] ;
    [ splitArrayIntoNegativesAndPositives addObject:lessThanArray ] ;
    
    NSPredicate *sortGreaterThan = [ NSPredicate predicateWithFormat: @" self >= 0" ];
    NSArray *greaterThanArray = [ array filteredArrayUsingPredicate:sortGreaterThan ] ;
    [ splitArrayIntoNegativesAndPositives addObject:greaterThanArray ] ;
    
    NSLog(@"%@", splitArrayIntoNegativesAndPositives);
    return splitArrayIntoNegativesAndPositives;
}

- (NSArray *)namesOfHobbitsInDictionary:(NSDictionary *)hobbits {
    NSArray *namesOfHobbitsInDictionary = [ hobbits allKeysForObject:@"hobbit"];
    NSLog(@"%@", namesOfHobbitsInDictionary) ;
    return namesOfHobbitsInDictionary;
}

- (NSArray *)stringsBeginningWithAInArray:(NSArray *)array {
    NSPredicate *findTheAs = [ NSPredicate predicateWithFormat:@"self BEGINSWITH[cd] 'a'"];
    NSArray *stringsBeginningWithAInArray = [ array filteredArrayUsingPredicate:findTheAs ];
    
    return stringsBeginningWithAInArray ;
}

- (NSInteger)sumOfIntegersInArray:(NSArray *)array {
    NSInteger sumOfIntegersInArray = 0 ;
    for ( NSUInteger i = 0 ; i < [ array count ] ; i++ ) {
        sumOfIntegersInArray = sumOfIntegersInArray + [ array[i] integerValue ];
    }
    return sumOfIntegersInArray;
}

- (NSArray *)arrayByPluralizingStringsInArray:(NSArray *)array {
    NSMutableArray *arrayByPluralizingStringsInArray = [ NSMutableArray new ] ;
    for (NSUInteger i = 0 ; i < [ array count ]; i++ ) {
        NSString *plural ;
        if ( [ array[i] isEqualToString:@"foot" ]) {
            [ arrayByPluralizingStringsInArray addObject:@"feet" ] ;
        }
        else if ( [ array[i] isEqualToString:@"ox" ]) {
            [ arrayByPluralizingStringsInArray addObject:@"oxen" ] ;
         }
        else if ( [ array[i] isEqualToString:@"radius" ]) {
            [ arrayByPluralizingStringsInArray addObject:@"radii" ] ;
        }
        else if ( [ array[i] isEqualToString:@"trivium" ]) {
            [ arrayByPluralizingStringsInArray addObject:@"trivia" ] ;
        }
        else if ( [ array[i] isEqualToString:@"box" ]) {
            [ arrayByPluralizingStringsInArray addObject:@"boxes" ] ;
        }
        else {
            plural = [ array[i] stringByAppendingString:@"s"];
            [ arrayByPluralizingStringsInArray addObject:plural ] ;
        }
    }
    return arrayByPluralizingStringsInArray ;
}

//Is there a simpler way?
- (NSDictionary *)countsOfWordsInString:(NSString *)string {
    NSArray *punctuations = @[ @"!", @",", @".", @"?", @"@", @"%%", @"-", @";", @":", @"'", @"\""  ];
    NSMutableString *punctuationless = [ [string lowercaseString] copy ] ;
    NSMutableDictionary *countsOfWordsInString = [NSMutableDictionary dictionary];
    for (NSUInteger i = 0 ; i < [ punctuations count ]; i++ ) {
            NSString *punctuation = punctuations[i] ;
            punctuationless = [ punctuationless stringByReplacingOccurrencesOfString:punctuation withString:@"" ];
        }
    NSArray *stringArray = [ punctuationless componentsSeparatedByString:@" "] ;
    NSLog(@"%@", stringArray);
    for ( NSUInteger i = 0 ; i < [stringArray count] ; i++ ) {
        NSString *word = stringArray[i];
        NSPredicate *filterStrings = [ NSPredicate predicateWithFormat:@"self == %@", word];
        NSArray *arrayOfString = [ stringArray filteredArrayUsingPredicate:filterStrings ];
        countsOfWordsInString[word]= [NSNumber numberWithInteger:[ arrayOfString count ]] ;
    }
    
    
    
//    for ( NSUInteger i = 0 ; i < [stringArray count ] ; i++ ) {
//        if ([countsOfWordsInString objectForKey:stringArray[i]] == nil) {
//            countsOfWordsInString[stringArray[i]] = ([NSNumber numberWithInteger:0]);
//        }
//        else {
//            NSInteger addedTo = [ countsOfWordsInString[stringArray[i]] integerValue] + 1;
//            [ countsOfWordsInString removeObjectForKey:stringArray[i] ];
//             countsOfWordsInString[stringArray[i]] = [NSNumber numberWithInteger:addedTo ];
//        }
//    }

    
    
    return countsOfWordsInString;
}

- (NSDictionary *)songsGroupedByArtistFromArray:(NSArray *)array {
    
    NSMutableDictionary *songsGroupedByArtistFromArray = [ NSMutableDictionary dictionary ];
    NSMutableDictionary *songsGroupedByArtist = [NSMutableDictionary dictionary];
    
    for ( NSUInteger i = 0; i < [ array count ] ; i++ ) {
        
        NSArray *artistTitle = [ array[i] componentsSeparatedByString:@" - " ];
        
        if ( [ songsGroupedByArtist objectForKey:artistTitle[0] ] == nil ) {
            
            NSMutableArray *song = [ NSMutableArray new ];
            
            [ song addObject:artistTitle[1]] ;
            
            songsGroupedByArtist[artistTitle[0]] = song ;
            
        }
        else {
            [ songsGroupedByArtist[artistTitle[0]] addObject:artistTitle[1]] ;
            NSMutableArray *songs = songsGroupedByArtist[artistTitle[0]] ;
            
            NSSortDescriptor *alphabetize = [ NSSortDescriptor sortDescriptorWithKey:nil ascending:YES ];
            NSArray *alphaSongs = [ songs sortedArrayUsingDescriptors:@[alphabetize] ];;
            
            songsGroupedByArtistFromArray[artistTitle[0]] = alphaSongs;
        }
    }
    
// Clunky method
//    for (NSString *key in songsGroupedByArtist) {
//        
//        
//        NSMutableArray *songs = songsGroupedByArtist[key];
//        
//        NSSortDescriptor *alphabetize = [ NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
//        NSArray *alphaSongs = [ songs sortedArrayUsingDescriptors:@[alphabetize]];;
//
//        [songsGroupedByArtistFromArray setObject:alphaSongs forKey:key];
//    }
    NSLog(@"%@", songsGroupedByArtistFromArray);

//    for ( NSUInteger i = 0 ; i < [ songsGroupedByArtistFromArray count ] ; i++ ) {
//        NSArray *songs = [ songsGroupedByArtistFromArray[i] objectForKey ];
    
        
//    }
    return songsGroupedByArtistFromArray;
}

@end
