import React from 'react';
import { Card, Image } from 'semantic-ui-react';

export default (props) => {
  const cards = props.points.map(point => {
    return (
      <Card key={point.id}>
        <Image src={point.image_url}></Image>
        <Card.Content>
          <Card.Header>{point.name}</Card.Header>
          <Card.Description>{point.info}</Card.Description>
        </Card.Content>
      </Card>
    )
  })

  return (
    <Card.Group>
      {cards}
    </Card.Group>
  )
};
