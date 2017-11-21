import React from 'react';
import ReactDOM from 'react-dom';
import './css/main.css';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';
import App from './App';

const MaterialUiApp = () => (
  <MuiThemeProvider>
    <App />
  </MuiThemeProvider>
)

ReactDOM.render(
  <MaterialUiApp />,
  document.getElementById('root')
);
