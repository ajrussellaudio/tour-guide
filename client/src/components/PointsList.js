import React from 'react';
import { Card, Image, Icon } from 'semantic-ui-react';

export default (props) => {
  const cards = props.points.map(point => {
    return (
      <Card key={point.id}>
        <Image src={point.image_url}></Image>
        <Card.Content>
          <Card.Header>{point.name}</Card.Header>
          <Card.Description>{point.info}</Card.Description>
        </Card.Content>
        <Card.Content extra>
          <a href="#">
            <Icon name="marker"/>
            Map
          </a>
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
