const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    './node_modules/flowbite/**/*.js'
  ],
  safelist: [
    {
      pattern: /text-(red|green|blue)-(100|200|300|400|500|700|900)/,
      variants: ['lg', 'hover', 'focus', 'lg:hover'],
    },
    {
      pattern: /bg-(red|green|blue)-(100|200|300|500|900)/,
      variants: ['lg', 'hover', 'focus', 'lg:hover'],
    },
    {
      pattern: /border-(red|green|blue)-(100|200|300|500|900)/,
      variants: ['lg', 'hover', 'focus', 'lg:hover']
    }
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
    require('flowbite/plugin')
  ]
}
