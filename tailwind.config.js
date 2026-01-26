/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{js,jsx,ts,tsx}"],
  darkMode: "class",
  theme: {
    extend: {
      colors: {
        nba: {
          black: '#000000',
          white: '#FFFFFF',
          gold: '#FFB81C',
          red: '#E03C3C',
          navy: '#1D1160',
        },
      },
      backgroundImage: {
        'nba-gradient': 'linear-gradient(135deg, #000000 0%, #1D1160 50%, #E03C3C 100%)',
        'nba-court': "url('data:image/svg+xml;utf8,<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 1400 800\"><rect fill=\"%23D4A574\" width=\"1400\" height=\"800\"/><rect fill=\"none\" stroke=\"%23000000\" stroke-width=\"2\" x=\"50\" y=\"50\" width=\"1300\" height=\"700\"/></svg>')",
      },
      boxShadow: {
        'nba-lg': '0 20px 40px rgba(0, 0, 0, 0.4), inset 0 1px 0 rgba(255, 255, 255, 0.1)',
        'nba-md': '0 10px 25px rgba(0, 0, 0, 0.3)',
      },
      animation: {
        'pulse-nba': 'pulse-nba 2s cubic-bezier(0.4, 0, 0.6, 1) infinite',
        'bounce-ball': 'bounce-ball 1.5s ease-in-out infinite',
      },
      keyframes: {
        'pulse-nba': {
          '0%, 100%': { opacity: '1' },
          '50%': { opacity: '.7' },
        },
        'bounce-ball': {
          '0%, 100%': { transform: 'translateY(0)' },
          '50%': { transform: 'translateY(-20px)' },
        },
      },
    },
  },
  plugins: [],
}
