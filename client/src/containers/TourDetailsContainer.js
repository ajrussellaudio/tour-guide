import React from 'react';
import { Grid, Header } from 'semantic-ui-react';
import PointsMap from '../components/PointsMap';
import PointDetailsContainer from './PointDetailsContainer';

export default class TourDetailsContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      selectedPoint: null
    };
    this.handlePointSelected = this.handlePointSelected.bind(this);
  }

  componentWillReceiveProps(nextProps) {
    const url = "/api/tours/" + nextProps.selectedTour;
    fetch(url)
    .then(response => response.json())
    .then(tour => this.setState({tour}))
  }

  handlePointSelected(point) {
    this.setState({ selectedPoint: point })
  }

  render() {
    if (!this.state.tour) return null;
    return (
      <Grid stackable>
        <Grid.Column width={8}>
          <PointsMap points={this.state.tour.points} onMarkerClick={this.handlePointSelected} />
        </Grid.Column>
        <Grid.Column width={8}>
          <PointDetailsContainer tour={this.props.selectedTour} {...this.state} />
        </Grid.Column>
      </Grid>
    );
  }
}
