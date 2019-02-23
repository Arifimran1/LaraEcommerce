@extends('admin.layouts.master')

@section('content')
  <!-- partial -->
  <div class="main-panel">
    <div class="content-wrapper">
      <div class="card">
        <div class="card-header">
          Products
        </div>
        <div class="card-body">
          @include('admin.partials.messages')
          <table class="table table-hover table-striped" >

            <tr>
              <th>#</th>
              <th>Product Title</th>
              <th>Quantity</th>
              <th>Price</th>
              <th>Action</th>
            </tr>
            @foreach ($products as $product)
              <tr>
                <td>#</td>
                <td>{{$product->title}}</td>
                <td>{{$product->quantity}}</td>
                <td>{{$product->price}}</td>
                <td>
                    <a href="{{ route('admin.product.edit', $product->id) }}" class="btn btn-success">edit</a>
                    <a href="#deleteModal{{$product->id}}" data-toggle="modal" class="btn btn-danger">Delete</a>

                    <!--delete modal-->
                    <div class="modal fade" id="deleteModal{{$product->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title" id="exampleModalLabel"> Are you sure to delete?</h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="modal-body">
                              <form action=" {{route('admin.product.delete', $product->id)}}" method="post">
                                {{ csrf_field() }}
                                <button type="submit" class="btn btn-danger">Parmanent delete</button>
                              </form>
                            </div>
                            <div class="modal-footer">
                              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                          </div>
                        </div>
                      </div>

                </td>

              </tr>
            @endforeach

          </table>
        </div>

      </div>

    </div>
  </div>
@endsection
