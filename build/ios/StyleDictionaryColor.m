
//
// StyleDictionaryColor.m
//
// Do not edit directly
// Generated on Fri, 19 Jul 2019 21:24:05 GMT
//

#import "StyleDictionaryColor.h"


@implementation StyleDictionaryColor

+ (UIColor *)color:(StyleDictionaryColorName)colorEnum{
  return [[self values] objectAtIndex:colorEnum];
}

+ (NSArray *)values {
  static NSArray* colorArray;
  static dispatch_once_t onceToken;

  dispatch_once(&onceToken, ^{
    colorArray = @[
[UIColor colorWithRed:0.00f green:0.00f blue:0.00f alpha:1.00f],
[UIColor colorWithRed:0.13f green:0.13f blue:0.13f alpha:1.00f],
[UIColor colorWithRed:0.34f green:0.34f blue:0.34f alpha:1.00f],
[UIColor colorWithRed:1.00f green:1.00f blue:1.00f alpha:1.00f],
[UIColor colorWithRed:0.38f green:0.34f blue:0.00f alpha:1.00f],
[UIColor colorWithRed:1.00f green:0.92f blue:0.32f alpha:1.00f],
[UIColor colorWithRed:1.00f green:0.95f blue:0.60f alpha:1.00f],
[UIColor colorWithRed:1.00f green:0.99f blue:0.90f alpha:1.00f],
[UIColor colorWithRed:0.00f green:0.40f blue:0.07f alpha:1.00f],
[UIColor colorWithRed:0.15f green:0.63f blue:0.35f alpha:1.00f],
[UIColor colorWithRed:0.63f green:0.91f blue:0.75f alpha:1.00f],
[UIColor colorWithRed:0.92f green:0.98f blue:0.95f alpha:1.00f],
[UIColor colorWithRed:0.84f green:0.56f blue:0.00f alpha:1.00f],
[UIColor colorWithRed:0.96f green:0.73f blue:0.31f alpha:1.00f],
[UIColor colorWithRed:1.00f green:0.94f blue:0.52f alpha:1.00f],
[UIColor colorWithRed:1.00f green:0.99f blue:0.90f alpha:1.00f],
[UIColor colorWithRed:0.71f green:0.01f blue:0.00f alpha:1.00f],
[UIColor colorWithRed:0.95f green:0.40f blue:0.40f alpha:1.00f],
[UIColor colorWithRed:0.96f green:0.60f blue:0.60f alpha:1.00f],
[UIColor colorWithRed:0.99f green:0.93f blue:0.93f alpha:1.00f],
[UIColor colorWithRed:0.33f green:0.10f blue:0.66f alpha:1.00f],
[UIColor colorWithRed:0.60f green:0.39f blue:0.93f alpha:1.00f],
[UIColor colorWithRed:0.78f green:0.64f blue:1.00f alpha:1.00f],
[UIColor colorWithRed:0.95f green:0.92f blue:1.00f alpha:1.00f],
[UIColor colorWithRed:0.10f green:0.36f blue:0.66f alpha:1.00f],
[UIColor colorWithRed:0.00f green:0.62f blue:0.93f alpha:1.00f],
[UIColor colorWithRed:0.48f green:0.84f blue:1.00f alpha:1.00f],
[UIColor colorWithRed:0.90f green:0.97f blue:1.00f alpha:1.00f],
[UIColor colorWithRed:0.00f green:0.00f blue:0.00f alpha:1.00f],
[UIColor colorWithRed:0.13f green:0.13f blue:0.13f alpha:1.00f],
[UIColor colorWithRed:0.34f green:0.34f blue:0.34f alpha:1.00f],
[UIColor colorWithRed:1.00f green:1.00f blue:1.00f alpha:1.00f],
[UIColor colorWithRed:0.70f green:0.70f blue:0.70f alpha:1.00f],
[UIColor colorWithRed:0.86f green:0.86f blue:0.86f alpha:1.00f],
[UIColor colorWithRed:0.95f green:0.95f blue:0.95f alpha:1.00f],
[UIColor colorWithRed:0.97f green:0.97f blue:0.97f alpha:1.00f]
    ];
  });

  return colorArray;
}

@end
