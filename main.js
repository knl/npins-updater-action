const { execFileSync } = require('child_process');
// just go straight to the good stuff
execFileSync(`${__dirname}/npins-updater`, { stdio: 'inherit' });
