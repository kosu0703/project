// 배송지 목록 변경 버튼
let btn_count = 0;
function delivery_address_change() {
  const delivery_address_list = document.querySelector(
    ".delivery_address_list_wrapper"
  );
  if (btn_count % 2 == 0) {
    delivery_address_list.style.display = "block";
  } else {
    delivery_address_list.style.display = "none";
  }
  btn_count++;
}

// 배송지 주소 선택 버튼
function delivery_address_select() {}

// 신규 배송지 추가 버튼
function delivery_address_add() {}

// 결제하기 버튼
function order_submit() {}
