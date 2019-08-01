const StyleDictionary = require('style-dictionary');

function isOpacityGroup(prop) {
  return prop.group === 'opacity';
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

StyleDictionary.registerTransformGroup({
  name: 'custom/web',
  transforms: ["attribute/cti", "name/cti/kebab", 'opacity/number']
});

StyleDictionaryExtended = StyleDictionary.extend(__dirname + '/config.json');

StyleDictionaryExtended.buildPlatform('web');

console.log('\n==============================================');
console.log('\nBuild completed!');
