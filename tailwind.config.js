/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{js,jsx,ts,tsx}"],
  darkMode: "class",
  theme: {
      extend: {
        backgroundImage: {
          'light-gradient': 'linear-gradient(to bottom, #ff7e5f, #feb47b, #fffacd)',
          'dark-gradient': 'linear-gradient(to bottom, #0f2027, #203a43, #2c5364)',
        },
      },
    },
  plugins: [],
}
