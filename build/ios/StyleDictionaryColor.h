
//
// StyleDictionaryColor.h
//
// Do not edit directly
// Generated on Tue, 18 Jun 2019 13:24:37 GMT
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSInteger, StyleDictionaryColorName) {
ColorBrandFirstDark,
ColorBrandFirstMedium,
ColorBrandFirstLight,
ColorBrandSecondDark,
ColorBrandSecondMedium,
ColorBrandSecondLight,
ColorInterfacePositiveDark,
ColorInterfacePositiveMedium,
ColorInterfacePositiveLight,
ColorInterfaceAlertDark,
ColorInterfaceAlertMedium,
ColorInterfaceAlertLight,
ColorInterfaceNegativeDark,
ColorInterfaceNegativeMedium,
ColorInterfaceNegativeLight,
ColorInterfaceHighlightDark,
ColorInterfaceHighlightMedium,
ColorInterfaceHighlightLight,
ColorInterfaceActionDark,
ColorInterfaceActionMedium,
ColorInterfaceActionLight,
ColorInterfaceContentDark,
ColorInterfaceContentMedium,
ColorInterfaceContentLight,
ColorInterfaceShadeDark,
ColorInterfaceShadeMedium,
ColorInterfaceShadeLight
};

@interface StyleDictionaryColor : NSObject
+ (NSArray *)values;
+ (UIColor *)color:(StyleDictionaryColorName)color;
@end
