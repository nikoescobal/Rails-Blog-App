const colors = require('tailwindcss/colors')

module.exports = {
  purge: [
    './app/**/.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js'
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
    },
    colors: {
      gray:colors.blueGray,
      teal:colors.teal,
      orange:colors.orange,
    }
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
