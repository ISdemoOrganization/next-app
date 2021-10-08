import '../styles/globals.css'

function MyApp({ Component, pageProps, processId }) {
  return <div>processId: {processId}</div>
}

MyApp.getInitialProps = () => {
  return {
    processId: process.pid
  }
}

export default MyApp