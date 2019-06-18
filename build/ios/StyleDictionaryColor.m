
//
// StyleDictionaryColor.m
//
// Do not edit directly
// Generated on Tue, 18 Jun 2019 13:24:37 GMT
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
[UIColor colorWithRed:0.34f green:0.34f blue:0.34f alpha:1.00f],
[UIColor colorWithRed:1.00f green:1.00f blue:1.00f alpha:1.00f],
[UIColor colorWithRed:0.38f green:0.34f blue:0.00f alpha:1.00f],
[UIColor colorWithRed:1.00f green:0.92f blue:0.32f alpha:1.00f],
[UIColor colorWithRed:1.00f green:0.99f blue:0.90f alpha:1.00f],
[UIColor colorWithRed:0.00f green:0.40f blue:0.07f alpha:1.00f],
[UIColor colorWithRed:0.15f green:0.63f blue:0.35f alpha:1.00f],
[UIColor colorWithRed:0.92f green:0.98f blue:0.95f alpha:1.00f],
[UIColor colorWithRed:0.38f green:0.34f blue:0.00f alpha:1.00f],
[UIColor colorWithRed:1.00f green:0.92f blue:0.32f alpha:1.00f],
[UIColor colorWithRed:1.00f green:0.99f blue:0.90f alpha:1.00f],
[UIColor colorWithRed:0.71f green:0.01f blue:0.00f alpha:1.00f],
[UIColor colorWithRed:1.00f green:0.92f blue:0.32f alpha:1.00f],
[UIColor colorWithRed:0.99f green:0.93f blue:0.93f alpha:1.00f],
[UIColor colorWithRed:0.33f green:0.10f blue:0.66f alpha:1.00f],
[UIColor colorWithRed:0.59f green:0.32f blue:1.00f alpha:1.00f],
[UIColor colorWithRed:0.95f green:0.92f blue:1.00f alpha:1.00f],
[UIColor colorWithRed:0.10f green:0.36f blue:0.66f alpha:1.00f],
[UIColor colorWithRed:0.00f green:0.62f blue:0.93f alpha:1.00f],
[UIColor colorWithRed:1.00f green:0.99f blue:0.90f alpha:1.00f],
[UIColor colorWithRed:0.00f green:0.00f blue:0.00f alpha:1.00f],
[UIColor colorWithRed:0.34f green:0.34f blue:0.34f alpha:1.00f],
[UIColor colorWithRed:1.00f green:1.00f blue:1.00f alpha:1.00f],
[UIColor colorWithRed:0.87f green:0.87f blue:0.87f alpha:1.00f],
[UIColor colorWithRed:0.95f green:0.95f blue:0.95f alpha:1.00f],
[UIColor colorWithRed:0.97f green:0.97f blue:0.97f alpha:1.00f]
    ];
  });

  return colorArray;
}

@end
