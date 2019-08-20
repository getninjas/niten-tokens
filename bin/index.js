#!/usr/bin/env node
const { exec } = require('child_process');
const path = require('path');
const dist = process.argv[3];
const nitenPath = path.resolve(__dirname, '../')
const command = `cp ${nitenPath}/build/web/_niten-tokens.scss ${dist}`;

exec(command, (err, stdout, stderr) => {
  if(err) {
    return console.log(err);
  }

  console.log('Finish import Niten Tokens with success! :)');
})