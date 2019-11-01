<?php
	class Category {

		private $con;
		private $id;
		private $title;

		public function __construct($con, $id) {
			$this->con = $con;
			$this->id = $id;

			$query = mysqli_query($this->con, "SELECT * FROM mobile A, mobile_category B, category C WHERE A.mobile_id = B.mobile_id and B.category_id = C.category_id and B.category_id='$this->id'");
			$this->q = $query;
			$query1 = mysqli_query($this->con, "SELECT * FROM mobile_category A, category B where A.category_id = B.category_id and B.category_id='$this->id'");

			$category = mysqli_fetch_array($query1);
			$this->title = $category['category_name'];
		}

		public function getQuery() {
			return $this->q;
		}

		public function getTitle() {
			return $this->title;
		}

	}
?>