import React, { Component } from 'react';
import ToursContainer from './containers/ToursContainer';
import TourDetailsContainer from './containers/TourDetailsContainer';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      selectedTour: null
    };
    this.handleTourSelected = this.handleTourSelected.bind(this);
  }

  handleTourSelected(selectedId) {
    this.setState({selectedTour: selectedId})
  }

  render() {
    return (
      <div className="App">
        <ToursContainer onChange={this.handleTourSelected} {...this.state}/>
        <TourDetailsContainer {...this.state} />
      </div>
    );
  }
}

export default App;
