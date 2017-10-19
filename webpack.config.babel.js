import ExtractTextPlugin from 'extract-text-webpack-plugin';

export default {
  "entry": [
    "./style/my.scss"
  ],
  output: {
    filename: './.temp/bundle.js'
  },
  "module": {
    "rules": [
      {
        "test": /\.scss$/,
        "loader": ExtractTextPlugin.extract({
          "use": ["css-loader","sass-loader"]
        })
      }
    ]
  },
  "plugins": [
    new ExtractTextPlugin({
      "filename": "./public/css/my.css"
    })
  ]
};

