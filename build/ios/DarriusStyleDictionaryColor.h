
//
// DarriusStyleDictionaryColor.h
//
// Do not edit directly
// Generated on Mon, 07 Jun 2021 01:51:30 GMT
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSInteger, StyleDictionaryColorName) {
ColorBrand100,
ColorBrand200,
ColorBrand300,
ColorBrand400,
ColorBrand500,
ColorBrand600,
ColorBrand700,
ColorBrand800,
ColorBrand900,
ColorAction100,
ColorAction200,
ColorAction300,
ColorAction400,
ColorAction500,
ColorAction600,
ColorAction700,
ColorAction800,
ColorAction900,
ColorNeutralLight100,
ColorNeutralLight200,
ColorNeutralLight300,
ColorNeutralLight400,
ColorNeutralLight500,
ColorNeutralLight600,
ColorNeutralDark100,
ColorNeutralDark200,
ColorNeutralDark300,
ColorNeutralDark400,
ColorNeutralDark500,
ColorNeutralDark600,
ColorPositive100,
ColorPositive200,
ColorPositive300,
ColorPositive400,
ColorPositive500,
ColorPositive600,
ColorPositive700,
ColorPositive800,
ColorPositive900,
ColorNegative100,
ColorNegative200,
ColorNegative300,
ColorNegative400,
ColorNegative500,
ColorNegative600,
ColorNegative700,
ColorNegative800,
ColorNegative900,
ColorWarning100,
ColorWarning200,
ColorWarning300,
ColorWarning400,
ColorWarning500,
ColorWarning600,
ColorWarning700,
ColorWarning800,
ColorWarning900,
ColorHighlight100,
ColorHighlight200,
ColorHighlight300,
ColorHighlight400,
ColorHighlight500,
ColorHighlight600,
ColorHighlight700,
ColorHighlight800,
ColorHighlight900,
ColorAliasBackground01,
ColorAliasBackground02,
ColorAliasBorder01,
ColorAliasBorder02,
ColorAliasIlustrativeIcon,
ColorAliasInteractiveIcon,
ColorAliasTextHeading,
ColorAliasTextSubheading,
ColorAliasTextBody,
ColorAliasTextPlaceholder,
ColorAliasTextLink
};

@interface StyleDictionaryColor : NSObject
+ (NSArray *)values;
+ (UIColor *)color:(StyleDictionaryColorName)color;
@end
