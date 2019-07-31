const StyleDictionary = require('style-dictionary');
const _ = require('lodash');

function isOpacityGroup(prop) {
  return prop.group === 'opacity';
}

function isOffset(prop) {
  return prop.attributes.type === 'offset';
}

console.log('Build started...');
console.log('\n==============================================');

StyleDictionary.registerTransform({
  name: 'opacity/number',
  type: 'value',
  matcher: isOpacityGroup,
  transformer: function(prop) {
    return prop.value;
  }
});

StyleDictionary.registerTransform({
  name: 'color/cgsize',
  type: 'value',
  matcher: isOffset,
  transformer: function(prop) {
    const value = prop.value.split(' ');
    return `CGSize(width: ${value[0]}, height:${value[1]})`;
  }
});

StyleDictionary.registerTransform({
  name: 'name/ti/camel',
  type: 'name',
  transformer: function(prop, options) {
    return _.camelCase([options.prefix].concat(prop.path).join(' '));
  }
});

StyleDictionary.registerTransformGroup({
  name: 'custom/web',
  transforms: ["attribute/cti", "name/cti/kebab", 'opacity/number']
});

StyleDictionary.registerTransformGroup({
  name: 'custom/ios',
  transforms: ["attribute/cti", "name/ti/camel", "color/UIColorSwift", "color/cgsize"]
});

StyleDictionaryExtended = StyleDictionary.extend(__dirname + '/config.json');

StyleDictionaryExtended.buildPlatform("ios-swift");

console.log('\n==============================================');
console.log('\nBuild completed!');
