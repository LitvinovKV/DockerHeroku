import express from 'express';
const PORT=4321,
 CORS = {
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Methods': 'GET,POST,DELETE',
        'Access-Control-Allow-Headers': 'Content-Type, Access-Control-Allow-Headers'
      }
;

express()
  .use(express.static('public'))
  .get('/', r=>r.res.sendFile('public/index.html'))
  .use(r=>r.res.status(404).end('Still not here, sorry!'))
  .use((e,r,res,n)=>res.status(500).end(`Error: ${e}`))
  .listen(process.env.PORT || PORT, ()=>console.log(process.pid))

	.get('/author', r=>r.res.set(CORS).send('Алан Тьюринг'))
;
