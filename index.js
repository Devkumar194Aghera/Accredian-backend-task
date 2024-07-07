const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const { PrismaClient, Prisma } = require("@prisma/client");
const nodemailer = require("nodemailer");

const PORT = 3001;
const app = express();
const prisma = new PrismaClient();
const CLIENT_ID = "Client ID  from google cloud console";
const CLIENT_SECRET = "Client Seceret from google cloud console";
// app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(cors());

async function sendEMail(mail_address) {
  try {
    const transport = nodemailer.createTransport({
      service: "gmail",
      auth: {
        type: "OAuth2",
        user: "sender's email address",
        clientId: CLIENT_ID,
        clientSecret: CLIENT_SECRET,

        accessToken: "Account's Access Token",
      },
    });

    const mailOptions = {
      from: "devaghera194@gmail.com",
      to: mail_address,
      subject: "Accredian Had A Prize just for You",
      text: "Referral Content",
      html: "<h1>Referral Content</h1>",
    };

    const result = await transport.sendMail(mailOptions);
  } catch (error) {
    return error;
  }
}

app.post("/", async function (req, res) {
  const data = req.body.details;
  const newReferral = await prisma.referral.create({
    data,
  });
  return res.status(201).json(newReferral);
});

//  To send mail services we will perform get request with /mail/mail_address of the referre

app.get("/mail/:mailid", function (req, res) {
  sendEMail(req.params.mailid)
    .then((result) => {
      console.log("Email is send Successfully!!!");
    })
    .catch((error) => {
      console.log("An error is occured" + error);
    });
  return res.status(201).json({
    status: "success",
  });
});

app.listen(PORT, () => {
  console.log("Server started");
});
