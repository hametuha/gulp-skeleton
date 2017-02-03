# Gulp Skeleton

A template Gulp task for theme/plugin development in WordPress.

## How to use

Do not clone this repository. We have shell commmand to install files.

```
wget -O - 'https://raw.githubusercontent.com/hametuha/gulp-skeleton/installer.sh' | bash
```

Copy this command and paste to your terminal.

After download, run `npm install`.

## Customize

Edit `gulpfile.js`. Common structure is like below:

### Simple

Most simple.

- Your `src/scss` will be compiled to `assets/css` folder.
- Your `src/js` will be checked syntax and uglified to `assets/js` folder.
- Your `src/img` will be minified `assets/img` folder.

```
YOUR_DIR
├.jshintrc
│
├assets
│  ├img
│  ├js
│  └css
│
├gulpfile.js
│
├package.json
│
└src
    ├img
    ├js
    └scss
```

## License

GPL 3.0 or later.