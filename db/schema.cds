namespace cinema;

using { cuid } from '@sap/cds/common';

type MovieGenre : String(20) enum {
  Action = 'ACTION';
  Comedy = 'COMEDY';
  Drama = 'DRAMA';
  Horror = 'HORROR';
  Scifi = 'SCI_FI';
  Animation = 'ANIMATION';
  Thriller = 'THRILLER';
  Romance = 'ROMANCE';
}

entity Movies : cuid {
  title : String(200) not null;
  genre : MovieGenre not null;
  durationMinutes : Integer not null;
  releaseDate : Date not null;   
  director : String(150);
  language : String(10) default 'EN';         
  ticketPrice : Decimal(10,2);
  description:LargeString;
}