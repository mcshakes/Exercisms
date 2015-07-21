var transform = function(old){
  var newHash = {}

  Object.keys(old).forEach(function(key){
    var values = old[key]
    resetHash(key, values)
  });

  function resetHash(key, values){
    values.forEach(function(val){
      newHash[val.toLowerCase()] = parseInt(key);
    });
  };
  
  return newHash;
};

module.exports = transform;
