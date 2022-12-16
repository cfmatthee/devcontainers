import './app.postcss'
import App from './App.svelte'

const app = new App({ target: document.getElementById('app') })

Neutralino.init()
Neutralino.events.on('windowClose', () => Neutralino.app.exit())

export default app
