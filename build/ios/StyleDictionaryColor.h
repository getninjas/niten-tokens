
//
// StyleDictionaryColor.h
//
// Do not edit directly
// Generated on Fri, 19 Jul 2019 21:24:05 GMT
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSInteger, StyleDictionaryColorName) {
ColorBrandFirstExtraDark,
ColorBrandFirstDark,
ColorBrandFirstMedium,
ColorBrandFirstLight,
ColorBrandSecondExtraDark,
ColorBrandSecondDark,
ColorBrandSecondMedium,
ColorBrandSecondLight,
ColorInterfacePositiveExtraDark,
ColorInterfacePositiveDark,
ColorInterfacePositiveMedium,
ColorInterfacePositiveLight,
ColorInterfaceAlertExtraDark,
ColorInterfaceAlertDark,
ColorInterfaceAlertMedium,
ColorInterfaceAlertLight,
ColorInterfaceNegativeExtraDark,
ColorInterfaceNegativeDark,
ColorInterfaceNegativeMedium,
ColorInterfaceNegativeLight,
ColorInterfaceHighlightExtraDark,
ColorInterfaceHighlightDark,
ColorInterfaceHighlightMedium,
ColorInterfaceHighlightLight,
ColorInterfaceActionExtraDark,
ColorInterfaceActionDark,
ColorInterfaceActionMedium,
ColorInterfaceActionLight,
ColorInterfaceContentExtraDark,
ColorInterfaceContentDark,
ColorInterfaceContentMedium,
ColorInterfaceContentLight,
ColorInterfaceShadeExtraDark,
ColorInterfaceShadeDark,
ColorInterfaceShadeMedium,
ColorInterfaceShadeLight
};

@interface StyleDictionaryColor : NSObject
+ (NSArray *)values;
+ (UIColor *)color:(StyleDictionaryColorName)color;
@end
