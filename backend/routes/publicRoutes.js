const express = require("express");
const router = express.Router();
const {
  getAllPostsByCategory,
  getPostByID,
} = require("../controllers/postController");
const { getAvailableSeatType } = require("../controllers/seatController");
const {
  getAirplanes,
  getRCMAirplanes,
} = require("../controllers/airplaneController");
const {
  getAllFlights,
  searchOneWayFlights,
  searchRoundTripFlights,
  getFlightDetails,
} = require("../controllers/flightController");
const { getAllServices } = require("../controllers/serviceController");
const {
  rcmLocations,
  rcmAllLocations,
} = require("../controllers/airportController");

const { getAllDiscounts } = require("../controllers/discountController");
//flightController
// Định nghĩa route
router.get("/flights/page/:page", getAllFlights); //Tim kiem all
router.get("/flights/:flight_id", getFlightDetails); // Tim kiem cu the
// Tim chuyen bay 1 chieu
router.get(
  "/flights/oneway/:departure/:destination/:departure_date/:amount",
  searchOneWayFlights
);
// Tim chuyen bay khu hoi
router.get(
  "/flights/roundtrip/:departure/:destination/:departure_date/:return_date/:amount",
  searchRoundTripFlights
);

//PostController
router.get("/posts/:category/page/:page", getAllPostsByCategory); // lay tat ca bai viet
router.get("/posts/:post_id", getPostByID); // lay chi tiet 1 bai viet

// SeatsController
router.get("/seats/:flight_id/:seat_type", getAvailableSeatType); // tra ve ghe trong cua 1 chuyen bay -> vao 1 chuyen bay de check ghe con lai

// airplaneController
router.get("/airplanes/page/:page", getAirplanes);
// get RCM airplanes
router.get("/airplanes", getRCMAirplanes);

// Get all services
router.get("/services", getAllServices);

// RCM location
router.get("/locations/:query", rcmLocations);
// RCM all location
router.get("/locations", rcmAllLocations);

// Lấy toàn bộ discount
router.get("/discounts", getAllDiscounts);
module.exports = router;

// Tim kiem chuyen bay -> chon 1 chuyen bay -> tra ve danh sach ghe con trong -> public
