const StyleDictionaryPackage = require('style-dictionary');
const _ = require('lodash');

function getStyleDictionaryConfig(platform) {
  return {
    "source": [
      "src/properties/globals/**/*.json",
      `src/properties/platforms/${platform}/**/*.json`
    ],
    "platforms": {
      "web": {
        "transformGroup": "custom/web",
        "buildPath": `build/web/`,
        "files": [{
          "destination": "_niten-tokens.scss",
          "format": "scss/variables"
        }]
      },
      "ios": {
        "transformGroup": "custom/ios",
        "buildPath": "build/ios/",
        "files": [{
          "destination": "NitenTokens.swift",
          "format": "ios-swift/class.swift",
          "className": "NitenTokens",
          "filter": {}
        }]
      }
    }
  };
}

function isOpacityGroup(prop) {
  return prop.group === 'opacity';
}

function isOffset(prop) {
  return prop.attributes.type === 'offset';
}

console.log('Build started...');
console.log('\n==============================================');

StyleDictionaryPackage.registerTransform({
  name: 'opacity/number',
  type: 'value',
  matcher: isOpacityGroup,
  transformer: function(prop) {
    return prop.value;
  }
});

StyleDictionaryPackage.registerTransform({
  name: 'color/CGSize',
  type: 'value',
  matcher: isOffset,
  transformer: function(prop) {
    const value = prop.value.split(' ');
    return `CGSize(width: ${value[0]}, height:${value[1]})`;
  }
});

StyleDictionaryPackage.registerTransform({
  name: 'name/ti/camel',
  type: 'name',
  transformer: function(prop, options) {
    return _.camelCase([options.prefix].concat(prop.path).join(' '));
  }
});

StyleDictionaryPackage.registerTransformGroup({
  name: 'custom/web',
  transforms: ["attribute/cti", "name/cti/kebab", 'opacity/number']
});

StyleDictionaryPackage.registerTransformGroup({
  name: 'custom/ios',
  transforms: ["attribute/cti", "name/ti/camel", "color/UIColorSwift", "color/CGSize"]
});

['web', 'ios'].map(function (platform) {
  const StyleDictionary = StyleDictionaryPackage.extend(getStyleDictionaryConfig(platform));

  StyleDictionary.buildPlatform(platform);
})

console.log('\n==============================================');
console.log('\nBuild completed!');
