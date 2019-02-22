@extends('layouts.master')

@section('content')
  {{-- sidebar + content --}}
  <div class="container margin-top-20">
    <div class="row">
      <div class="col-md-4">
        <div class="list-group">
          <a href="#" class="list-group-item list-group-item-action">First item</a>
          <a href="#" class="list-group-item list-group-item-action">Second item</a>
          <a href="#" class="list-group-item list-group-item-action">Third item</a>
        </div>
      </div>
      <div class="col-md-8">
        <div class="widget">
          <h3>Featured Products</h3>
          <div class="row">

            <div class="col-md-3">
              <div class="card">
                <img class="card-img-top feature-img" src="{{ asset('images/products/'."galaxy.jpg") }}" alt="Card image">
                <div class="card-body">
                  <h4 class="card-title">Samsung</h4>
                  <p class="card-text">TK. 5000</p>
                  <a href="#" class="btn btn-outline-warning">Add to cart</a>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="card">
                <img class="card-img-top feature-img" src="{{ asset('images/products/'."galaxy.jpg") }}" alt="Card image">
                <div class="card-body">
                  <h4 class="card-title">Samsung</h4>
                  <p class="card-text">TK. 5000</p>
                  <a href="#" class="btn btn-outline-warning">Add to cart</a>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="card">
                <img class="card-img-top feature-img" src="{{ asset('images/products/'."galaxy.jpg") }}" alt="Card image">
                <div class="card-body">
                  <h4 class="card-title">Samsung</h4>
                  <p class="card-text">TK. 5000</p>
                  <a href="#" class="btn btn-outline-warning">Add to cart</a>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="card">
                <img class="card-img-top feature-img" src="{{ asset('images/products/'."galaxy.jpg") }}" alt="Card image">
                <div class="card-body">
                  <h4 class="card-title">Samsung</h4>
                  <p class="card-text">TK. 5000</p>
                  <a href="#" class="btn btn-outline-warning">Add to cart</a>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="card">
                <img class="card-img-top feature-img" src="{{ asset('images/products/'."galaxy.jpg") }}" alt="Card image">
                <div class="card-body">
                  <h4 class="card-title">Samsung</h4>
                  <p class="card-text">TK. 5000</p>
                  <a href="#" class="btn btn-outline-warning">Add to cart</a>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="card">
                <img class="card-img-top feature-img" src="{{ asset('images/products/'."galaxy.jpg") }}" alt="Card image">
                <div class="card-body">
                  <h4 class="card-title">Samsung</h4>
                  <p class="card-text">TK. 5000</p>
                  <a href="#" class="btn btn-outline-warning">Add to cart</a>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="card">
                <img class="card-img-top feature-img" src="{{ asset('images/products/'."galaxy.jpg") }}" alt="Card image">
                <div class="card-body">
                  <h4 class="card-title">Samsung</h4>
                  <p class="card-text">TK. 5000</p>
                  <a href="#" class="btn btn-outline-warning">Add to cart</a>
                </div>
              </div>
            </div>


          </div>
        </div>


      </div>
    </div>


  </div>

  {{-- end sidebar + content --}}

@endsection
