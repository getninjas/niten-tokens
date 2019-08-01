# Contributing

## Clone the repository

```shell
git clone https://github.com/getninjas/niten-tokens.git

cd niten-tokens

npm i
```

## Build files platform

Run follow command to generate `build` folder with files to platforms (Web, iOS, Android)

```shell
npm run build
```

## Clean build file generated

Run follow command to exclude `build` folder

```shell
npm run clean
```

## Release

When releasing a new version, follow these steps on `master` branch:

1. Update [CHANGELOG.md](CHANGELOG.md) and commit the changes
1. Run `npm version [major | minor | patch | premajor | preminor | prepatch | prerelease]` and assign a new version (to more details visit [NPM Docs - npm version](https://docs.npmjs.com/cli/version))
2. Run `git push --follow-tags`
3. Run `npm publish`