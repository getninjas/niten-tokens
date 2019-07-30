const StyleDictionary = require('style-dictionary');

console.log('Build started...');
console.log('\n==============================================');

StyleDictionary.registerTransform({
  name: 'opacity/number', // notice: the name is an override of an existing predefined method (yes, you can do it)
  type: 'value',
  matcher: function(prop) {
    // this is just an example of a possible filter (based on the "cti" values) to show how a "matcher" works
    return prop.group === 'opacity';
  },
  transformer: function(prop) {
    console.log("TCL: prop.value", prop.value);
    return `${prop.value}`;
  }
});

StyleDictionary.registerTransform({
  name: 'color/hexToRgba', // notice: the name is an override of an existing predefined method (yes, you can do it)
  type: 'value',
  matcher: function(prop) {
    // this is just an example of a possible filter (based on the "cti" values) to show how a "matcher" works
    return prop.group === 'opacity';
  },
  transformer: function(prop) {
    return `${prop.value}`;
  }
});

StyleDictionary.registerTransformGroup({
  name: 'custom/web',
  // this is just to show a possibility, if you want to add a few transforms to a pre-defined group
  // (even so, we suggest to use the previous approach, which is more explicit and clear)
  transforms: StyleDictionary.transformGroup['scss'].concat(['opacity/number', 'color/hexToRgba'])
});

// APPLY THE CONFIGURATION
// Very important: the registration of custom transforms
// needs to be done _before_ applying the configuration
StyleDictionaryExtended = StyleDictionary.extend(__dirname + '/config.json');


// FINALLY, BUILD ALL THE PLATFORMS
StyleDictionaryExtended.buildAllPlatforms();

console.log('\n==============================================');
console.log('\nBuild completed!');