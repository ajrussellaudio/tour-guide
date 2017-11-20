import React, { Component } from 'react';
import { Container } from 'semantic-ui-react';
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

  handleTourSelected(e, {value}) {
    this.setState({selectedTour: value})
  }

  render() {
    return (
      <Container className="App" fluid>
        <ToursContainer onChange={this.handleTourSelected} />
        <TourDetailsContainer {...this.state} />
      </Container>
    );
  }
}

export default App;
