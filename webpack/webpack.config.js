const webpack = require('webpack');
const path = require('path');
const UglifyJsPlugin = require('uglifyjs-webpack-plugin');

module.exports = {
  module:{
    rules:[
      {
        test:/\.js$/,
        exclude:/node_modules/,
        use:{
          loader: "babel-loader",
          options:{
            presets:[
            ["env",{
              "targets":{
                "browsers":["since 2015","safari >= 7","ie >= 8","Firefox ESR"]
              }
            }]
            ]
          }
        }
      }
    ]
  },
  'externals':{
    '$':'jQuery',
    'jquery':'jQuery',
    'moment':'moment',
    'window.moment':'moment',
    'httpFetch':'httpFetch',
    'window.httpFetch':'httpFetch'
  },
  optimization: {
    minimizer: [new UglifyJsPlugin({
      uglifyOptions:{
        compress:true,
        ecma:5,
        output:{
          comments:false
        }
      }
    })]
  },
  entry: '/opt/project/src/index.js',
  output: {
    filename: 'main.js',
    path: '/opt/project/dist'
  }
};
