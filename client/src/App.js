import React, { Component } from 'react';
import { Grid } from 'semantic-ui-react';
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
      <Grid classname="App">
        <Grid.Column width={3}>
          <ToursContainer onChange={this.handleTourSelected} />
        </Grid.Column>
        <Grid.Column width={13}>
          <TourDetailsContainer {...this.state} />
        </Grid.Column>
      </Grid>
    );
  }
}

export default App;
