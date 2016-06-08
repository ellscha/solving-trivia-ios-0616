//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [self solveTrivia];
    
    return YES;
}
-(NSString *)solveTrivia {
    NSString *returnState;
    NSDictionary *statesAndCapitals =
    @{@"ALABAMA" : @"MONTGOMERY",
      @"ALASKA" : @"JUNEAU",
      @"ARIZONA" : @"PHOENIX",
      @"ARKANSAS" : @"LITTLE ROCK",
      @"CALIFORNIA" : @"SACRAMENTO",
      @"COLORADO" : @"DENVER",
      @"CONNECTICUT" : @"HARTFORD",
      @"DELAWARE" : @"DOVER",
      @"FLORIDA" : @"TALLAHASSEE",
      @"GEORGIA" : @"ATLANTA",
      @"HAWAII" : @"HONOLULU",
      @"IDAHO" : @"BOISE",
      @"ILLINOIS" : @"SPRINGFIELD",
      @"INDIANA" : @"INDIANAPOLIS",
      @"IOWA" : @"DES MOINES",
      @"KANSAS" : @"TOPEKA",
      @"KENTUCKY" : @"FRANKFORT",
      @"LOUISIANA" : @"BATON ROUGE",
      @"MAINE" : @"AUGUSTA",
      @"MARYLAND" : @"ANNAPOLIS",
      @"MASSACHUESETTS" : @"BOSTON",
      @"MICHIGAN" : @"LANSING",
      @"MINNESOTA" : @"ST. PAUL",
      @"MISSISSIPPI" : @"JACKSON",
      @"MISSOURI" : @"JEFFERSON CITY",
      @"MONTANA" : @"HELENA",
      @"NEBRASKA" : @"LINCOLN",
      @"NEVADA" : @"CARSON CITY",
      @"NEW HAMPSHIRE" : @"CONCORD",
      @"NEW JERSEY" : @"TRENTON",
      @"NEW MEXICO" : @"SANTA FE",
      @"NEW YORK" : @"ALBANY",
      @"NORTH CAROLINA" : @"RALEIGH",
      @"NORTH DAKOTA" : @"BISMARCK",
      @"OHIO" : @"COLUMBUS",
      @"OKLAHOMA" : @"OKLAHOMA CITY",
      @"OREGON" : @"SALEM",
      @"PENNSYLVANIA" : @"HARRISBURG",
      @"RHODE ISLAND" : @"PROVIDENCE",
      @"SOUTH CAROLINA" : @"COLUMBIA",
      @"SOUTH DAKOTA" : @"PIERRE",
      @"TENNESSEE" : @"NASHVILLE",
      @"TEXAS" : @"AUSTIN",
      @"UTAH" : @"SALT LAKE CITY",
      @"VERMONT" : @"MONTPELIER",
      @"VIRGINIA" : @"RICHMOND",
      @"WASHINGTON" : @"OLYMPIA",
      @"WEST VIRGINIA" : @"CHARLESTON",
      @"WISCONSIN" : @"MADISON",
      @"WYOMING" : @"CHEYENNE"};
    
    for (NSString *state in statesAndCapitals) {
        NSMutableArray *stateStrings = [NSMutableArray new];
        NSMutableArray *capitalStrings = [NSMutableArray new];
        
        for (NSUInteger i = 0; i<[state length]; i++) {
            
            [stateStrings addObject:[NSString stringWithFormat:@"%C", [state characterAtIndex:i]]];
            [stateStrings removeObject:@" "];
        }
        for (NSUInteger i = 0; i < [statesAndCapitals[state] length]; i++) {
            
            [capitalStrings addObject:[NSString stringWithFormat:@"%C", [statesAndCapitals[state] characterAtIndex:i]]];
            [capitalStrings removeObject:@" "];
        }
        NSLog(@"%@ and capitals: %@", stateStrings, capitalStrings);
        NSUInteger rightAnswerEqualsZero = 0;
        for (NSUInteger i = 0; i < [stateStrings count]; i++) {
            for (NSUInteger j = 0; j < [capitalStrings count]; j++) {
                NSLog(@"%@ and capital's letter %@", stateStrings[i], capitalStrings[j]);
                if ([stateStrings[i] isEqualToString:capitalStrings[j]]) {
                    rightAnswerEqualsZero++;
                    NSLog(@"Right Answer is %lu", rightAnswerEqualsZero);
                    NSLog(@"%@ with the count at %lu", state, rightAnswerEqualsZero); }
            }
        }
        if (rightAnswerEqualsZero == 0) {
            returnState = state.capitalizedString;
            NSLog(@"tje state is  %@", state);
        }
    }
    return returnState;
    
}



@end
