import db from "@/db";

const GET = async (req: Request) => {
  console.log("Estoy en el servidor");

  await db.book.deleteMany();

  const exampleBook = {
    title: "Harry Potter y el Prisionero de Azkaban",
    publicationDate: new Date("1999-07-08"),
    authorId: "1",
    publisherId: "1",
    categoryId: "1",
    createdById: "1",
  };

  await db.book.create({ data: exampleBook });

  const libros = await db.book.findMany();

  return Response.json({ libros: libros }, { status: 200 });
};

export { GET };
