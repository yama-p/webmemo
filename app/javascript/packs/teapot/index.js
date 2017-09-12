import React from 'react'
import ReactDOM from 'react-dom'
import Teapot from './Teapot'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Teapot />,
    document.body.appendChild(document.createElement('div')),
  )
})
