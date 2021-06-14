
//
// DarriusStyleDictionaryColor.m
//
// Do not edit directly
// Generated on Mon, 14 Jun 2021 15:16:57 GMT
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
[UIColor colorWithRed:1.000f green:0.996f blue:0.933f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.984f blue:0.816f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.965f blue:0.620f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.937f blue:0.443f alpha:1.000f],
[UIColor colorWithRed:0.992f green:0.902f blue:0.243f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.831f blue:0.149f alpha:1.000f],
[UIColor colorWithRed:0.969f green:0.745f blue:0.125f alpha:1.000f],
[UIColor colorWithRed:0.929f green:0.663f blue:0.035f alpha:1.000f],
[UIColor colorWithRed:0.812f green:0.518f blue:0.016f alpha:1.000f],
[UIColor colorWithRed:0.918f green:0.973f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.800f green:0.929f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.600f green:0.839f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.216f green:0.651f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.055f green:0.451f blue:0.910f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.357f blue:0.859f alpha:1.000f],
[UIColor colorWithRed:0.031f green:0.271f blue:0.678f alpha:1.000f],
[UIColor colorWithRed:0.024f green:0.188f blue:0.537f alpha:1.000f],
[UIColor colorWithRed:0.039f green:0.129f blue:0.369f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.965f green:0.973f blue:0.980f alpha:1.000f],
[UIColor colorWithRed:0.941f green:0.949f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.882f green:0.902f blue:0.914f alpha:1.000f],
[UIColor colorWithRed:0.757f green:0.792f blue:0.816f alpha:1.000f],
[UIColor colorWithRed:0.702f green:0.741f blue:0.769f alpha:1.000f],
[UIColor colorWithRed:0.506f green:0.573f blue:0.624f alpha:1.000f],
[UIColor colorWithRed:0.333f green:0.392f blue:0.463f alpha:1.000f],
[UIColor colorWithRed:0.259f green:0.314f blue:0.388f alpha:1.000f],
[UIColor colorWithRed:0.216f green:0.251f blue:0.322f alpha:1.000f],
[UIColor colorWithRed:0.153f green:0.180f blue:0.231f alpha:1.000f],
[UIColor colorWithRed:0.071f green:0.082f blue:0.110f alpha:1.000f],
[UIColor colorWithRed:0.922f green:0.992f blue:0.953f alpha:1.000f],
[UIColor colorWithRed:0.682f green:0.953f blue:0.796f alpha:1.000f],
[UIColor colorWithRed:0.490f green:0.871f blue:0.647f alpha:1.000f],
[UIColor colorWithRed:0.290f green:0.796f blue:0.502f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.659f blue:0.329f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.588f blue:0.275f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.502f blue:0.243f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.431f blue:0.208f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.341f blue:0.169f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.933f blue:0.933f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.761f blue:0.761f alpha:1.000f],
[UIColor colorWithRed:0.984f green:0.573f blue:0.573f alpha:1.000f],
[UIColor colorWithRed:0.976f green:0.400f blue:0.400f alpha:1.000f],
[UIColor colorWithRed:0.933f green:0.271f blue:0.271f alpha:1.000f],
[UIColor colorWithRed:0.843f green:0.153f blue:0.153f alpha:1.000f],
[UIColor colorWithRed:0.745f green:0.125f blue:0.125f alpha:1.000f],
[UIColor colorWithRed:0.620f green:0.055f blue:0.055f alpha:1.000f],
[UIColor colorWithRed:0.459f green:0.008f blue:0.008f alpha:1.000f],
[UIColor colorWithRed:0.992f green:0.945f blue:0.863f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.839f blue:0.651f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.741f blue:0.435f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.651f blue:0.239f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.541f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:0.914f green:0.439f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.337f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:0.769f green:0.282f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:0.612f green:0.184f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:0.953f green:0.922f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.855f green:0.773f blue:0.980f alpha:1.000f],
[UIColor colorWithRed:0.784f green:0.639f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.682f green:0.490f blue:0.980f alpha:1.000f],
[UIColor colorWithRed:0.565f green:0.314f blue:0.949f alpha:1.000f],
[UIColor colorWithRed:0.420f green:0.204f blue:0.749f alpha:1.000f],
[UIColor colorWithRed:0.337f green:0.157f blue:0.620f alpha:1.000f],
[UIColor colorWithRed:0.216f green:0.098f blue:0.388f alpha:1.000f],
[UIColor colorWithRed:0.129f green:0.059f blue:0.239f alpha:1.000f],
[UIColor colorWithRed:0.941f green:0.949f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.941f green:0.949f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.757f green:0.792f blue:0.816f alpha:1.000f],
[UIColor colorWithRed:0.506f green:0.573f blue:0.624f alpha:1.000f],
[UIColor colorWithRed:0.333f green:0.392f blue:0.463f alpha:1.000f],
[UIColor colorWithRed:0.153f green:0.180f blue:0.231f alpha:1.000f],
[UIColor colorWithRed:0.216f green:0.251f blue:0.322f alpha:1.000f],
[UIColor colorWithRed:0.259f green:0.314f blue:0.388f alpha:1.000f],
[UIColor colorWithRed:0.506f green:0.573f blue:0.624f alpha:1.000f],
[UIColor colorWithRed:0.055f green:0.451f blue:0.910f alpha:1.000f]
    ];
  });

  return colorArray;
}

@end
