const StyleDictionary = require('style-dictionary');

function isOpacityGroup(prop) {
  return prop.group === 'opacity';
}

console.log('Build started...');
console.log('\n==============================================');

StyleDictionary.registerTransform({
  name: 'opacity/number', // notice: the name is an override of an existing predefined method (yes, you can do it)
  type: 'value',
  matcher: isOpacityGroup,
  transformer: function(prop) {
    return prop.value;
  }
});

StyleDictionary.registerTransformGroup({
  name: 'custom/web',
  // this is just to show a possibility, if you want to add a few transforms to a pre-defined group
  // (even so, we suggest to use the previous approach, which is more explicit and clear)
  transforms: ["attribute/cti", "name/cti/kebab", 'opacity/number']
});

// APPLY THE CONFIGURATION
// Very important: the registration of custom transforms
// needs to be done _before_ applying the configuration
StyleDictionaryExtended = StyleDictionary.extend(__dirname + '/config.json');


// FINALLY, BUILD ALL THE PLATFORMS
StyleDictionaryExtended.buildAllPlatforms();

console.log('\n==============================================');
console.log('\nBuild completed!');