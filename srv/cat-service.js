const cds = require('@sap/cds');

module.exports = class CinemaService extends cds.ApplicationService{

  async  init(){

this.before('UPDATE', 'Movies.drafts', async (req) => {
 

   if( req.data.durationMinutes > 200) req.data.director = "Nelson";
});




    return super.init()
    }
}