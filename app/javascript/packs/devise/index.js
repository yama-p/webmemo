import React from 'react'
import ReactDOM from 'react-dom'
import SessionNew from './new'

document.addEventListener('DOMContentLoaded', () => {
  console.log("SessionNew");
  ReactDOM.render(
    <SessionNew />,
    document.body.appendChild(document.createElement('div')),
  )
})
