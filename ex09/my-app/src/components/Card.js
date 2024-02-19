import "../App.css";

function Card(props) {
  let product = props.product;

  return (
    <div>
      <div className="product-card">
        {product.id} :{product.name},{product.price}원
      </div>
    </div>
  );
}

export default Card;
