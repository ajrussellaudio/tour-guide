import React from 'react';
import './leaflet-map.css'
import { Map, TileLayer, Marker, Popup } from 'react-leaflet';
import { Container, Card, Image } from 'semantic-ui-react';

function extractPosition(point) {
  return {
    lat: parseFloat(point.latitude),
    lng: parseFloat(point.longitude)
  }
}

export default (props) => {
  const markers = props.points.map(point => {
    return (
      <Marker position={extractPosition(point)} key={point.id}>
        <Popup>
          <Card key={point.id}>
            <Image src={point.image_url}></Image>
            <Card.Content>
              <Card.Header>{point.name}</Card.Header>
              <Card.Description>{point.info}</Card.Description>
            </Card.Content>
          </Card>
        </Popup>
      </Marker>
    )
  })
  return (
    <Container>
      <Map bounds={props.points.map(point => extractPosition(point))}>
        <TileLayer
          url='https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png'
          attribution='&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
        />
        {markers}
      </Map>
    </Container>
  )
}
