const GET = async (req: Request) => {
  console.log("estoy en el servidor")
  return Response.json({ mensaje: "hola mundo" }, { status: 200 });
};

export { GET };
