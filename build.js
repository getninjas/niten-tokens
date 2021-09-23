const StyleDictionaryPackage = require('style-dictionary');
const _ = require('lodash');
const Color = require('tinycolor2');

function getStyleDictionaryConfig(platform) {
  return {
    "source": [
      "properties/globals/**/*.json",
      `properties/platforms/${platform}/**/*.json`
    ],
    "platforms": {
      "web": {
        "transformGroup": "custom/web",
        "buildPath": `build/web/`,
        "files": [{
          "destination": "design-tokens.scss",
          "format": "scss/variables",
          "options": {
            "outputReferences": true
          }
        },{
          "destination": "design-tokens.css",
          "format": "css/variables",
          "options": {
          "outputReferences": true
        }
        }]
      },
      "ios": {
        "transformGroup": "custom/ios",
        "buildPath": "build/ios/",
        "files": [{
          "destination": "DesignTokensColors.swift",
          "format": "ios-swift/enum.swift",
          "className": "DesignTokensColors",
          "filter": {
            "attributes": {
              "category": "color"
            }
          }
        },{
          "destination": "DesignTokensBorder.swift",
          "format": "ios-swift/enum.swift",
          "className": "DesignTokensBorder",
          "type": "float",
          "filter": {
            "attributes": {
              "category": "size",
              "type": "border"
            }
          }
        },{
          "destination": "DesignTokensFontSize.swift",
          "format": "ios-swift/enum.swift",
          "className": "DesignTokensFontSize",
          "type": "float",
          "filter": {
            "attributes": {
              "category": "size",
              "type": "font"
            }
          }
        },{
          "destination": "DesignTokensSpacings.swift",
          "format": "ios-swift/enum.swift",
          "className": "DesignTokensSpacings",
          "type": "float",
          "filter": {
            "attributes": {
              "category": "size",
              "type": "global"
            }
          }
        },{
          "destination": "DesignTokensFont.swift",
          "format": "ios-swift/enum.swift",
          "className": "DesignTokensFont",
          "type": "float",
          "filter": {
            "attributes": {
              "category": "font"
            }
          }
        },{
          "destination": "DesignTokensShadows.swift",
          "format": "ios-swift/class.swift",
          "className": "DesignTokensShadows",
          "filter": {
            "attributes": {
              "category": "shadow"
            }
          }
        }]
      },
      "android": {
        "transformGroup": "custom/android",
        "basePxFontSize": 14,
        "buildPath": "build/android/",
        "files": [{
          "destination": "tokens_colors.xml",
          "format": "android/colors"
        },{
          "destination": "tokens_font_dimens.xml",
          "format": "android/fontDimens"
        },{
          "destination": "tokens_dimens.xml",
          "format": "android/dimens"
        }]
      },
    },
  };
}

function isOffset(prop) {
  return prop.attributes.type === 'offset';
}

function isSize(prop) {
  return prop.attributes.category === 'size';
}

function isFontSize (prop) {
  return prop.attributes.category === 'size';
}

function isColor(prop) {
  return prop.attributes.category === 'color';
}

function isShadowRadius(prop) {
  return prop.attributes.type === 'radius' && prop.attributes.category === 'shadow';
}

console.log('Build started...');
console.log('\n==============================================');

StyleDictionaryPackage.registerTransform({
  name: 'size/CGSize',
  type: 'value',
  matcher: isOffset,
  transformer: function(prop) {
    const value = prop.value.split(' ');
    return `CGSize(width: ${value[0]}, height: ${value[1]})`;
  }
});

StyleDictionaryPackage.registerTransform({
  name: 'size/rem',
  type: 'value',
  matcher: isFontSize,
  transformer: function (prop) {
    return `rem(${(parseFloat(prop.value, 10)).toFixed(2)})`;
  }
});

StyleDictionaryPackage.registerTransform({
  name: 'size/pxToCGFloat',
  type: 'value',
  matcher: isSize,
  transformer: function(prop) {
    return `CGFloat(${(parseFloat(prop.value, 10)).toFixed(2)})`;
  }
});

StyleDictionaryPackage.registerTransform({
  name: 'color/DesignSystemColor',
  type: 'value',
  matcher: isColor,
  transformer: function(prop) {
    const { r, g, b, a } = Color(prop.value).toRgb();
    const rFixed = (r / 255.0).toFixed(2);
    const gFixed = (g / 255.0).toFixed(2);
    const bFixed = (b / 255.0).toFixed(2);
    return `DesignSystemColor (red: ${rFixed}, green: ${gFixed}, blue: ${bFixed}, alpha: ${a})`;
  }
});

StyleDictionaryPackage.registerTransform({
  name: 'size/shadowRadiusToCGFloat',
  type: 'value',
  matcher: isShadowRadius,
  transformer: function(prop) {
    return `CGFloat(${(parseFloat(prop.value, 10)).toFixed(2)})`;
  }
});

StyleDictionaryPackage.registerTransform({
  name: 'size/compose/remToDp',
  type: 'value',
  matcher: isSize,
  transformer: function(prop) {
    return parseFloat(prop.value, 10) + 'dp';
  }
});

StyleDictionaryPackage.registerTransform({
  name: 'size/dp',
  type: 'value',
  matcher: isSize,
  transformer: function(prop) {
    return parseFloat(prop.value, 10) + 'dp';
  }
});

StyleDictionaryPackage.registerTransform({
  name: 'color/sixDigitsToThreeDigits',
  type: 'value',
  matcher: isColor,
  transformer: function(prop) {
    const hexValue = prop.value.substr(1);
    if (hexValue.split('').every(char => char === hexValue[0])) {
      return prop.value.substr(0, prop.value.length-3);
    } else {
      return prop.value;
    }
  }
});

StyleDictionaryPackage.registerTransformGroup({
  name: 'custom/web',
  transforms: ["attribute/cti", "name/cti/kebab", "color/css", "size/px"]
});

StyleDictionaryPackage.registerTransformGroup({
  name: 'custom/ios',
  transforms: ["attribute/cti", "name/ti/camel", "color/DesignSystemColor", "size/CGSize", "size/pxToCGFloat", "size/shadowRadiusToCGFloat"]
});

StyleDictionaryPackage.registerTransformGroup({
  name: 'custom/android',
  transforms: ["attribute/cti", "name/cti/snake", "color/hex", "size/dp", "size/sp"]
});

['web', 'ios', 'android'].map(function (platform) {
  const StyleDictionary = StyleDictionaryPackage.extend(getStyleDictionaryConfig(platform));

  StyleDictionary.buildPlatform(platform);
})

console.log('\n==============================================');
console.log('\nBuild completed!');
