#!/bin/bash

# re-wiring git repository
rm -rf .git

# nuking old node modules
sudo rm -rf ~/.npm
rm -rf node_modules

# changing application name
find . -type f \( -iname \*.js -o -iname \*.jade \) -print -exec sed -i "" "s/meanr/$2/g" {} \;

# installing new node production modules
npm install underscore --save
npm install mongoose --save
npm install hapi --save
npm install good --save
npm install good-console --save
npm install bcrypt --save
npm install request --save
npm install lout --save
npm install joi --save

# install new node development modules
npm install bower --save
npm install grunt --save
npm install grunt-contrib-clean --save
npm install grunt-contrib-copy --save
npm install grunt-contrib-jade --save
npm install grunt-contrib-jshint --save
npm install grunt-contrib-less --save
npm install grunt-contrib-watch --save
npm install grunt-jscs --save
npm install grunt-shell --save
npm install jshint-stylish --save
npm install grunt-cli --save

# installing new bower production components
bower install angular --save
bower install angular-ui-router --save
bower install angular-localforage --save
bower install fontawesome --save
bower install underscore --save
bower install jquery --save
bower install toastr --save
bower install foundation --save

# create initial public directory
grunt deploy

# running all tests
npm test

echo "Success! Now push your initial commit to Github"
exit 0
