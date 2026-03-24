using { cinema as db } from '../db/schema';

service CinemaService {
  @odata.draft.enabled
  entity Movies as projection on db.Movies;
}