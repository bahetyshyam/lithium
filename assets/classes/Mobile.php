<?php
	class Mobile {
		private $con;
		private $id;
		private $title;
		private $picture;
		private $q;
		private $soc;
		private $display;
		private $camera;
		private $battery;
		private $amazon;
		private $flipkart;
		private $review;

		public function __construct($con, $id) {
			$this->con = $con;
			$this->id = $id;

			$query = mysqli_query($this->con, "SELECT * FROM mobile WHERE brand_id='$this->id'");
			$query1 = mysqli_query($this->con, "SELECT * FROM mobile WHERE mobile_id='$this->id'");
			$mobile = mysqli_fetch_array($query1);
			$this->q = $query;

			$this->title = $mobile['mobile_name'];
			$this->mobileId = $mobile['mobile_id'];
			$this->picture = $mobile['mobile_picture'];
			$this->soc = $mobile['mobile_soc'];
			$this->display = $mobile['mobile_display'];
			$this->camera = $mobile['mobile_camera'];
			$this->battery = $mobile['mobile_battery'];
			$this->amazon = $mobile['mobile_amazon'];
			$this->flipkart = $mobile['mobile_flipkart'];
			$this->review = $mobile['mobile_review'];
		}

		public function getTitle() {
			return $this->title;
		}

		public function getPicture() {
			return $this->picture;
		}

		public function getMobileId() {
			return $this->mobileId;
		}

		public function getSoc() {
			return $this->soc;
		}

		public function getDisplay() {
			return $this->display;
		}

		public function getCamera() {
			return $this->camera;
		}

		public function getBattery() {
			return $this->battery;
		}

		public function getAmazon() {
			return $this->amazon;
		}

		public function getFlipkart() {
			return $this->flipkart;
		}

		public function getReview() {
			return $this->review;
		}

		public function getQuery() {
			return $this->q;
		}
	}
?>