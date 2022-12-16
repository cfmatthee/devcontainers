const config = {
  content: ['./src/**/*.svelte', './index.html'],
  theme: {
    extend: {},
  },
  plugins: [require('@tailwindcss/forms')],
}

module.exports = config
