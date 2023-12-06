bring expect;
bring ex;
bring cloud;
bring http;

let react = new ex.ReactApp(
  projectPath: "../client",
  localPort: 4001,
  buildDir: "../client/dist",
);

let api = new cloud.Api(
  cors: true,
);

react.addEnvironment("apiUrl", api.url);

api.get("/", inflight () => {
  return {
    status:200,
    body: "Hello Wing"
  };
});

api.get("/title", inflight () => {
  return {
    status:200,
    body: "Hello from Api"
  };
});

