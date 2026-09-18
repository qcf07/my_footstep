@echo off
cd /d "%~dp0"
echo Starting My World Footsteps server...
echo.
echo Open http://localhost:3457 in your browser
echo Press Ctrl+C to stop
echo.
node -e "const http=require('http');const fs=require('fs');const path=require('path');const base=__dirname;const mimes={'.html':'text/html;charset=utf-8','.js':'application/javascript','.json':'application/json','.css':'text/css','.png':'image/png','.svg':'image/svg+xml','.ico':'image/x-icon'};http.createServer((req,res)=>{let f=path.join(base,req.url==='/'?'global_index.html':decodeURIComponent(req.url.split('?')[0]));try{let d=fs.readFileSync(f);res.writeHead(200,{'Content-Type':mimes[path.extname(f)]||'application/octet-stream','Cache-Control':'no-cache'});res.end(d)}catch(e){res.writeHead(404);res.end('Not found: '+req.url)}}).listen(3457,()=>console.log('Server ready at http://localhost:3457'))"