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

StyleDictionaryPackage.registerTransformGroup({
  name: 'custom/web',
  transforms: ["attribute/cti", "name/cti/kebab", 'opacity/number']
});

['web'].map(function (platform) {
  const StyleDictionary = StyleDictionaryPackage.extend(getStyleDictionaryConfig(platform));

  StyleDictionary.buildPlatform(platform);
});

console.log('\n==============================================');
console.log('\nBuild completed!');
