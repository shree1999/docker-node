import express from "express";
import path from "path";

const app = express();
const PORT = 8080;
const __dirname = path.resolve();

let userGoals = "Learn Docker";

app.use(express.static(path.join(__dirname, "public")));
app.set("view engine", "ejs");
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

app.get("/", (req, res) => {
  res.render("index", { goal: userGoals });
});

app.post("/get-goal", (req, res) => {
  console.log(req.body);
  userGoals = req.body.userInput;
  res.redirect("/");
});

app.listen(PORT, () => {
  console.log("Server up and running");
});
