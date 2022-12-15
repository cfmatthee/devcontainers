import './app.postcss'
import App from './App.svelte'

const app = new App({ target: document.getElementById('app') })

window.Neutralino.init()

export default app
