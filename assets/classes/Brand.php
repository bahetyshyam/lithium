<?php
	class Brand {

		private $con;
		private $id;
		private $title;
		private $logo;

		public function __construct($con, $id) {
			$this->con = $con;
			$this->id = $id;

			$query = mysqli_query($this->con, "SELECT * FROM brands WHERE brand_id='$this->id'");
			$album = mysqli_fetch_array($query);

			$this->title = $album['brand_name'];
			$this->brandId = $album['brand_id'];
			$this->logo = $album['brand_logo'];
		}

		public function getTitle() {
			return $this->title;
		}

		public function getLogo() {
			return $this->logo;
		}

		public function getBrandId() {
			return $this->brandId;
		}

		public function getMobileId() {
			$Oquery = mysqli_query($this->con, "SELECT * FROM mobile WHERE mobile_id='$this->id'");
			$array =  array();

			while($row = mysqli_fetch_array($Oquery)) {
				array_push($array,$row['mobile_id']);
			}
			return $array;
		}

	}
?>