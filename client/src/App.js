import React, { Component } from 'react';
import ToursContainer from './containers/ToursContainer';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      selectedTour: null
    };
    this.handleTourSelected = this.handleTourSelected.bind(this);
  }

  handleTourSelected(e, {value}) {
    this.setState({selectedTour: value})
  }

  render() {
    return (
      <div className="App">
        <ToursContainer onChange={this.handleTourSelected}/>
      </div>
    );
  }
}

export default App;
