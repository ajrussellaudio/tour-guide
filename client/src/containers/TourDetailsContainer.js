import React from 'react';
import { Grid, Header } from 'semantic-ui-react';
import PointsMap from '../components/PointsMap';
import PointDetails from './PointDetailsContainer';

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
      <Grid id="tour-details">
        <Grid.Row columns={1}>
          <Header>{this.state.tour.name}</Header>
          <p>{this.state.tour.info}</p>
        </Grid.Row>
        <Grid.Row columns={2} stretched>
          <Grid.Column width={10}>
            <PointsMap points={this.state.tour.points} onMarkerClick={this.handlePointSelected} />
          </Grid.Column>
          <Grid.Column width={6}>
            <PointDetails tour={this.props.selectedTour} {...this.state} />
          </Grid.Column>
        </Grid.Row>
      </Grid>
    );
  }
}
